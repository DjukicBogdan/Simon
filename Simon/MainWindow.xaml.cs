using NAudio.Midi;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Media;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Threading;

namespace Simon
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public DateTime dateTime = new DateTime();
        public DispatcherTimer dispatcherTimer = new DispatcherTimer();
        public static bool switchOn = false;
        public static bool playOn = false;
        public static bool stop = true;
        public static bool ShowError = false;
        public static bool hitButton1 = false;
        public static bool hitButton2 = false;
        public static bool hitButton3 = false;
        public static bool hitButton4 = false;
        public static Brush green1 = (Brush)(new BrushConverter().ConvertFrom("#00a74a"));
        public static Brush green2 = (Brush)(new BrushConverter().ConvertFrom("#13ff7c"));
        public static Brush red1 = (Brush)(new BrushConverter().ConvertFrom("#9f0f17"));
        public static Brush red2 = (Brush)(new BrushConverter().ConvertFrom("#ff4c4c"));
        public static Brush blue1 = (Brush)(new BrushConverter().ConvertFrom("#094a8f"));
        public static Brush blue2 = (Brush)(new BrushConverter().ConvertFrom("#1c8cff"));
        public static Brush yellow1 = (Brush)(new BrushConverter().ConvertFrom("#cca707"));
        public static Brush yellow2 = (Brush)(new BrushConverter().ConvertFrom("#fed93f"));
        public static int counter = 0;
        public static string pathSound1 = @"C:\Users\bogda\source\repos\Simon\Simon\Notes\E1.wav";
        public static string pathSound2 = @"C:\Users\bogda\source\repos\Simon\Simon\Notes\C_s1.wav";
        public static string pathSound3 = @"C:\Users\bogda\source\repos\Simon\Simon\Notes\A.wav";
        public static string pathSound4 = @"C:\Users\bogda\source\repos\Simon\Simon\Notes\E.wav";
        public static SoundPlayer playerS1 = new SoundPlayer(pathSound1);
        public static SoundPlayer playerS2 = new SoundPlayer(pathSound2);
        public static SoundPlayer playerS3 = new SoundPlayer(pathSound3);
        public static SoundPlayer playerS4 = new SoundPlayer(pathSound4);
        public static List<int> targetList = new List<int>();
        public static List<int> playerList = new List<int>();
        public static int maxNumTarget = 100;
        delegate void Update_Button_background_callback();
        private MediaPlayer mediaPlayer = new MediaPlayer();

        public MainWindow()
        {
            InitializeComponent();
            TimerSet();
            ButtonGreen1.Background = green1;
            ButtonRed2.Background = red1;
            ButtonBlue3.Background = blue1;
            ButtonYellow4.Background = yellow1;
            CounterTextBlock.Text = "--";
                      
            playerS1.Load();
            playerS2.Load();
            playerS3.Load();
            playerS4.Load();
            mediaPlayer.Open(new Uri(pathSound1));
          
           
            new Thread(() => { Thread.CurrentThread.IsBackground = true; Long_running(); }).Start();
            new Thread(() => { Thread.CurrentThread.IsBackground = true; PlayGame(); }).Start();
            
        }

        private void StartGame()
        {
            RestartGame();
            stop = false;
            PlayGame();           
        }

        private void PlayGame()
        {
            if (!switchOn)
            {
                return;
            }
            if (switchOn && playerList.Count >= maxNumTarget)
            {
                playerList.Clear();
                CounterTextBlock.Text = "win";
                Thread.Sleep(2000);
                RestartGame();
            }
            counter++;
            if (counter > maxNumTarget)
            {
                stop = true;
                playOn = false;
                return;
            }
            //Dispatcher.BeginInvoke(new Update_Button_background_callback(PrintNum), new object[] { });
            CounterTextBlock.Text = counter.ToString("0#");
           
            playOn = true;
           
        }

        private void Long_running()
        {
            try
            {
                while (true)
                {
                    if (playOn && switchOn && !stop)
                    {
                       
                        Thread.Sleep(2000);
                      
                        for (int i = 0; i < counter; i++)
                        {
                            if (targetList[i] == 0)
                            {
                                hitButton1 = true;

                            }
                            if (targetList[i] == 1)
                            {
                                hitButton2 = true;

                            }
                            if (targetList[i] == 2)
                            {
                                hitButton3 = true;

                            }
                            if (targetList[i] == 3)
                            {
                                hitButton4 = true;

                            }
                            if (hitButton1 == true)
                            {
                                Dispatcher.BeginInvoke(new Update_Button_background_callback(PlaySound1), new object[] { });
                                hitButton1 = false; Thread.Sleep(1000);
                            }
                            if (hitButton2 == true)
                            {
                                Dispatcher.BeginInvoke(new Update_Button_background_callback(PlaySound2), new object[] { });
                                hitButton2 = false; Thread.Sleep(1000);
                            }
                            if (hitButton3 == true)
                            {
                                Dispatcher.BeginInvoke(new Update_Button_background_callback(PlaySound3), new object[] { });
                                hitButton3 = false; Thread.Sleep(1000);
                            }
                            if (hitButton4 == true)
                            {
                                Dispatcher.BeginInvoke(new Update_Button_background_callback(PlaySound4), new object[] { });
                                hitButton4 = false; Thread.Sleep(1000);
                            }



                        }

                        playOn = false;
                    }
                    if (ShowError)
                    {
                        Dispatcher.BeginInvoke(new Update_Button_background_callback(ShowVisualError), new object[] { });
                     
                        ShowError = false;
                    }
                    if (switchOn && playerList.Count >= maxNumTarget)
                    {
                        playOn = false;
                        Dispatcher.BeginInvoke(new Update_Button_background_callback(Win), new object[] { });
                        Thread.Sleep(3000);
                    }


                }
                //Dispatcher.BeginInvoke(new Update_Button_background_callback(PlaySound4), new object[] { });
                //Thread.Sleep(500);
            }
            catch (Exception exc)
            {
                MessageBox.Show(exc.Message);
               
            }
        }

        private void Win()
        {
            stop = true;
            playOn = false;
            playerList.Clear();
            CounterTextBlock.Text = "win";          
        }

        private bool CheckResult()
        {
            if (switchOn)
            {
                for (int i = 0; i < playerList.Count; i++)
                {
                    if (playerList[i] != targetList[i])
                    {
                        playerList.Clear();
                        ShowError = true;                       
                        ResetTimer();
                        CounterTextBlock.Text = "--";
                        counter--;
                        SystemSounds.Beep.Play();
                        return false;
                    }
                }
                if (counter == playerList.Count)
                {
                    playerList.Clear();
                    PlayGame();
                    return true;
                }
                else
                {
                    return true;
                }
            }
            return true;
        }

        //private void PrintMsg()
        //{
        //    CounterTextBlock.Text = "--";

        //}

        //private void PrintNum()
        //{

        //    CounterTextBlock.Text = counter.ToString("0#");
        //}

        private void ShowVisualError()
        {
            ShowError = false;
            InnerBorder.Background = Brushes.Red;
            MainGrid.Background = Brushes.Red;
            CounterTextBlock.Text = "--";
        }

        private void RestartGame()
        {
            counter = 0;
            targetList.Clear();
            playerList.Clear();
            Random rnd = new Random();
            for (int i = 0; i < maxNumTarget; i++)
            {
                targetList.Add(rnd.Next(0, 4));
            }
            ResetTimer();
        }

        private void TimerSet()
        {
            dispatcherTimer.Tick += DispatcherTimer_Tick;
            dispatcherTimer.Interval = new TimeSpan(0, 0, 0, 0, 100);
            dispatcherTimer.Start();
        }       

        private void DispatcherTimer_Tick(object sender, object e)
        {
           

            dateTime = dateTime.AddSeconds(1);
            if (dateTime.Minute >= 0 && dateTime.Second >= 3)
            {
                ButtonGreen1.Background = green1;
                ButtonRed2.Background = red1;
                ButtonBlue3.Background = blue1;
                ButtonYellow4.Background = yellow1;
                InnerBorder.Background = Brushes.White;
                MainGrid.Background = Brushes.Transparent;
                CounterTextBlock.Text = counter.ToString("0#");
            }
            if (switchOn && !stop && dateTime.Minute >= 2 && dateTime.Second >= 20)
            {
                playerList.Clear();
                ShowError = true;
                ResetTimer();
                CounterTextBlock.Text = "--";               
                SystemSounds.Beep.Play();
                playOn = true;
            }
        }

        private void ButtonGreen1_Click(object sender, RoutedEventArgs e)
        {
            if (playOn)
            {
                return;
            }
            Dispatcher.BeginInvoke(new Update_Button_background_callback(PlaySound1), new object[] { });
            if (switchOn && !stop)
            {
                playerList.Add(0);            
                if (!CheckResult())
                {
                    PlayGame();
                }
            }
        }

        private void ButtonRed2_Click(object sender, RoutedEventArgs e)
        {
            if (playOn)
            {
                return;
            }
            Dispatcher.BeginInvoke(new Update_Button_background_callback(PlaySound2), new object[] { });
            if (switchOn && !stop)
            {
                playerList.Add(1);
                if (!CheckResult())
                {               
                    PlayGame();
                }
            }
        }

        private void ButtonBlue3_Click(object sender, RoutedEventArgs e)
        {
            if (playOn)
            {
                return;
            }
            Dispatcher.BeginInvoke(new Update_Button_background_callback(PlaySound3), new object[] { });
            if (switchOn && !stop)
            {
                playerList.Add(2);            
                if (!CheckResult())
                {               
                    PlayGame();
                }
            }
        }

        private void ButtonYellow4_Click(object sender, RoutedEventArgs e)
        {
            if (playOn)
            {
                return;
            }
            Dispatcher.BeginInvoke(new Update_Button_background_callback(PlaySound4), new object[] { });
            if (switchOn && !stop)
            {
                playerList.Add(3);             
                if (!CheckResult())
                {
                    PlayGame();
                }
            }
        }

        private void ButtonStart_Click(object sender, RoutedEventArgs e)
        {
            if (switchOn)
            {
                StartGame();               
            }                      
        }

        private void ButtonSwitch_Click(object sender, RoutedEventArgs e)
        {
            if (!switchOn)
            {
                BorderSwitch.Margin = new Thickness(25, 0, 0, 0);
                SwitchTextBlock.Text = "on";
                SwitchTextBlock.Foreground = Brushes.GreenYellow;
                switchOn = true;
                counter = 0;
                CounterTextBlock.Text = counter.ToString("0#");
            }
            else if (switchOn)
            {
                stop = true;
                BorderSwitch.Margin = new Thickness(0, 0, 25, 0);
                SwitchTextBlock.Text = "off";
                SwitchTextBlock.Foreground = Brushes.Red;
                switchOn = false;
                CounterTextBlock.Text = "--";
                //this.Close();
            }           
        }       

        private void ButtonGreen1_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            MessageBox.Show("ButtonGreen1_MouseLeftButtonDown");
            //playerS1.PlayLooping();
        }

        private void PlaySound1()
        {
          
            ButtonRed2.Background = red1;
            ButtonBlue3.Background = blue1;
            ButtonYellow4.Background = yellow1;
            ButtonGreen1.Background = green2;
            playerS1.Play();
            ResetTimer();
            
        }

        private void PlaySound2()
        {
            ButtonGreen1.Background = green1;
            ButtonBlue3.Background = blue1;
            ButtonYellow4.Background = yellow1;
            ButtonRed2.Background = red2;
            playerS2.Play();
            ResetTimer();
          
        }

        private void PlaySound3()
        {
            ButtonGreen1.Background = green1;
            ButtonRed2.Background = red1;
            ButtonYellow4.Background = yellow1;
            ButtonBlue3.Background = blue2;
            playerS3.Play();
            ResetTimer();
           
        }

        private void PlaySound4()
        {
            ButtonGreen1.Background = green1;
            ButtonRed2.Background = red1;
            ButtonBlue3.Background = blue1;
            ButtonYellow4.Background = yellow2;
            playerS4.Play();
            ResetTimer();
        }

        private void ResetTimer()
        {
            dateTime = dateTime.AddMinutes(-dateTime.Minute).AddSeconds(-dateTime.Second).AddMilliseconds(-dateTime.Millisecond);

        }

        private void ButtonGreen1_PreviewMouseDown(object sender, MouseButtonEventArgs e)
        {
            //ButtonGreen1.Background = green2;
            //mediaPlayer.Play();

            //playerS1.PlayLooping();
        }

        private void ButtonGreen1_PreviewMouseUp(object sender, MouseButtonEventArgs e)
        {
            //playerS1.Stop();
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
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
using WpfApp8.Classes;
using WpfApp8.Pages;



namespace WpfApp8
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            Manager.MainFrame = MainWindowFrame;
            
        }
        private void BtnMoveFirst_OnClick(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new Emploee());
        }
        private void BtnMoveSecond_OnClick(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new Buyer());
        }
        private void BtnMoveThird_OnClick(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new Stamp());
        }
        private void BtnMoveFour_OnClick(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new Car());
        }
        private void BtnMoveFive_OnClick(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new Sale());
        }
    }
}


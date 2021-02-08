using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
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

namespace MenovaKalkulacka
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            StahniKurzEUR();
            StahniKurzUSD();
            NastavInfo();
        }

        private bool edituji = false;
        private double kurzEUR;
        private double kurzUSD;
        private string s;

        private void czkTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (edituji) return;
            edituji = true;
            try
            {
                double czk = double.Parse(czkTextBox.Text);
                double eur = czk / kurzEUR;
                eurTextBox.Text = eur.ToString("N2");
                double usd = czk / kurzUSD;
                usdTextBox.Text = usd.ToString("N2");
            }
            catch
            {
                eurTextBox.Text = "";
                usdTextBox.Text = "";
            }
            edituji = false;
        }

        private void eurTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (edituji) return;
            edituji = true;
            try
            {
                double eur = double.Parse(eurTextBox.Text);
                double czk = eur * kurzEUR;
                czkTextBox.Text = czk.ToString("N2");
                double usd = czk / kurzUSD;
                usdTextBox.Text = usd.ToString("N2");
            }
            catch
            {
                czkTextBox.Text = "";
                usdTextBox.Text = "";
            }
            edituji = false;
        }

        private void usdTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (edituji) return;
            edituji = true;
            try
            {
                double usd = double.Parse(usdTextBox.Text);
                double czk = usd * kurzUSD;
                czkTextBox.Text = czk.ToString("N2");
                double eur = czk / kurzEUR;
                eurTextBox.Text = eur.ToString("N2");
            }
            catch
            {
                eurTextBox.Text = "";
                czkTextBox.Text = "";
            }
            edituji = false;
        }

        private void StahniKurzEUR()
        {
            WebClient wc = new WebClient();
            s = wc.DownloadString(
                String.Format("https://www.cnb.cz/cs/financni-trhy/devizovy-trh/kurzy-devizoveho-trhu/kurzy-devizoveho-trhu/vybrane.txt?od={0}&do={1}&mena=EUR&format=txt", DateTime.Today.AddDays(-5).ToString("dd.MM.yyyy"), DateTime.Today.ToString("dd.MM.yyyy")));
            string s1 = s.Substring(s.LastIndexOf('|') + 1);
            kurzEUR = Convert.ToDouble(s1);
        }
        private void StahniKurzUSD()
        {
            WebClient wc = new WebClient();
            s = wc.DownloadString(
                String.Format("https://www.cnb.cz/cs/financni-trhy/devizovy-trh/kurzy-devizoveho-trhu/kurzy-devizoveho-trhu/vybrane.txt?od={0}&do={1}&mena=USD&format=txt", DateTime.Today.AddDays(-5).ToString("dd.MM.yyyy"), DateTime.Today.ToString("dd.MM.yyyy")));
            string s1 = s.Substring(s.LastIndexOf('|') + 1);
            kurzUSD = Convert.ToDouble(s1);
        }
        private void NastavInfo()
        {
            string s2 = s.Substring(s.LastIndexOf('|') - 10, 10);
            aktualniTextBlock.Text = String.Format("Kurzy dle ČNB k {0}\nEUR = {1} | USD = {2}", s2, kurzEUR.ToString(), kurzUSD.ToString());
        }
    }
}

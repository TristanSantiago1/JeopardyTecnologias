using JeopardyGame.Pages;
using JeopardyGame.ServidorServiciosJeopardy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using System.Windows;
using System.Reflection.Emit;
using System.Windows.Controls;

namespace JeopardyGame.Helpers
{
    public  class GameCategoryCard : Border
    {
        private System.Windows.Controls.Label lblCategoryName;

        public GameCategoryCard(String  category)
        {            
            SetStyle();
            SetLabelStyle(category);
            this.Child = lblCategoryName;
        }

        private void SetStyle()
        {
            this.Style = (Style)FindResource("BorderCardGameCategoryStyle");
            this.Margin = new Thickness(20, 10,20,10);
        }

        private void SetLabelStyle(string category)
        {
            lblCategoryName = new();            
            lblCategoryName.Style = (Style)FindResource("LabelCategoryStyle");
            lblCategoryName.Content = category;
        }


    }
}

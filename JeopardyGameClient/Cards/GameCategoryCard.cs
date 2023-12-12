using System;
using System.Windows;
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

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JeopardyGame.Helpers
{
    public static class GetHostImage
    {
        public static string GetHosImage(int idHost)
        {
            return idHost switch
            {
                2 => "/Images/HostImages/PedroPresenta.png",
                4 => "/Images/HostImages/CristianoRonaldo.png",
                5 => "/Images/HostImages/MikeRichards.png",
                _ => "/Images/HostImages/MikeRichards.png",
            };
        }

        public static string GetAvatrImage(int idAvatar)
        {
            return idAvatar switch
            {
                1 => "/Images/Avatars/Alacran.png",
                2 => "/Images/Avatars/AvatarCarro.png",
                3 => "/Images/Avatars/BatMan.png",
                4 => "/Images/Avatars/Caballo.png",
                5 => "/Images/Avatars/IronMan.png",
                6 => "/Images/Avatars/RealMadrid.png",
                7 => "/Images/Avatars/SpiterMan.png",
                _ => "/Images/Avatars/AvatarCarro.png",
            };
        }

    }
}

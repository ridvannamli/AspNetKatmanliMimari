using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntityLayer;
using DataAccessLayer;

namespace BusinessLogicLayer
{
    public class BLLDers
    {
        public static List<EntityDers> BllListele()
        {
            return DALDers.DersListesi();
        }

        public static int TalepEkle(EntityBasvuruForm p)
        {
            if (Convert.ToInt32(p.BASOGRID).ToString() != null && Convert.ToInt32(p.BASDERSID).ToString() != null)
            {
                return DALDers.TalepEkle(p);
            }
            return -1;
        }
    }
}

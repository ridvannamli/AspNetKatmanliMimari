using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntityLayer;
using DataAccessLayer;
using BusinessLogicLayer;

namespace YazOkuluDersler
{
    public partial class OgrenciGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["OGRID"].ToString());
            Txtid.Text = x.ToString();              //  Convert.ToInt32(x).ToString();
            Txtid.Enabled = false;

            if (Page.IsPostBack == false)
            {
                List<EntityOgrenci> OgrList = BLLOgrenci.BllDetay(x);
                TxtAd.Text = OgrList[0].AD.ToString();
                TxtSoyad.Text = OgrList[0].SOYAD.ToString();
                TxtNumara.Text = OgrList[0].NUMARA.ToString();
                TxtFoto.Text = OgrList[0].FOTOGRAF.ToString();
                TxtSifre.Text = OgrList[0].SIFRE.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            EntityOgrenci ent = new EntityOgrenci();
            ent.AD = TxtAd.Text;
            ent.SOYAD = TxtSoyad.Text;
            ent.SIFRE = TxtSifre.Text;
            ent.NUMARA = TxtNumara.Text;
            ent.FOTOGRAF = TxtNumara.Text;
            ent.ID = Txtid.Text;           // Convert.ToInt32(Txtid.Text).ToString();
            BLLOgrenci.OgrenciGuncelleBLL(ent);
            Response.Redirect("OgrenciListesi.aspx");
        }
    }
}
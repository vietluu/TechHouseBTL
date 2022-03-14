using System;
using System.Collections.Generic;
using System.Web;

namespace TechHouseBTL
{
    public class Product
    {
        string namesp;
        string id;
        string imgSp;
        int paid;
        int sale;
     

        public Product(string namesp, string id, string imgSp, int paid, int sale)
        {
            this.Namesp = namesp;
            this.Id = id;
            this.ImgSp = imgSp;
            this.Paid = paid;
            this.Sale = sale;
            
           
        }

        public string Namesp { get => namesp; set => namesp = value; }
        public string Id { get => id; set => id = value; }
        public string ImgSp { get => imgSp; set => imgSp = value; }
        public int Paid { get => paid; set => paid = value; }
        public int Sale { get => sale; set => sale = value; }
       
    }
   
}
namespace TechHouseBTL
{
    public class Oder
    {
        string userID;
        string NameID;
        string ProductID;
        string imgsp;
        string Color;
        string size;
        int gia;
        int sl;

       
        public Oder(string userID, string nameID, string productID, string imgsp, string color, string size, int gia, int sl)
        {
            this.userID = userID;
            NameID = nameID;
            ProductID = productID;
            this.imgsp = imgsp;
            Color = color;
            this.size = size;
            this.gia = gia;
            this.Sl = sl;
        }

        public string UserID { get => userID; set => userID = value; }
        public string NameID1 { get => NameID; set => NameID = value; }
        public string ProductID1 { get => ProductID; set => ProductID = value; }
        public string Imgsp { get => imgsp; set => imgsp = value; }
        public string Color1 { get => Color; set => Color = value; }
        public string Size { get => size; set => size = value; }
        public int Gia { get => gia; set => gia = value; }
        public int Sl { get => sl; set => sl = value; }
    }
}
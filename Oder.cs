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

        public Oder(string userID, string nameID, string productID, string imgsp, string color, string size, int gia)
        {
            this.UserID = userID;
            NameID1 = nameID;
            ProductID1 = productID;
            this.Imgsp = imgsp;
            Color1 = color;
            this.Size = size;
            this.Gia = gia;
        }

        public string UserID { get => userID; set => userID = value; }
        public string NameID1 { get => NameID; set => NameID = value; }
        public string ProductID1 { get => ProductID; set => ProductID = value; }
        public string Imgsp { get => imgsp; set => imgsp = value; }
        public string Color1 { get => Color; set => Color = value; }
        public string Size { get => size; set => size = value; }
        public int Gia { get => gia; set => gia = value; }
    }
}
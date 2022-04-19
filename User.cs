namespace TechHouseBTL
{
    public class User
    {
        string email;
        string name;
        string pwd;

        public User(string email, string name, string pwd)
        {
            this.Email = email;
            this.Name = name;
            this.Pwd = pwd;
        }

        public string Email { get => email; set => email = value; }
        public string Name { get => name; set => name = value; }
        public string Pwd { get => pwd; set => pwd = value; }
    }
}
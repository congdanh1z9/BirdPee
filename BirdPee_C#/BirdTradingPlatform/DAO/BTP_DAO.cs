using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Configuration.Json;
using Microsoft.Data.SqlClient;
using System.Data;
using System.Collections;
using DTO;
using System.Reflection.PortableExecutable;
using System.Net.NetworkInformation;
using System.Diagnostics;
using System.Security.Cryptography;

namespace DAO
{
    public static class BTP_DAO
    {
        public static SqlConnection DBContext()
        {

            IConfiguration config = new ConfigurationBuilder()
            .SetBasePath(Directory.GetCurrentDirectory())
            .AddJsonFile("appsettings.json", true, true)
            .Build();
            var strConn = config["ConnectionStrings:DB"];
            SqlConnection conn = new SqlConnection(strConn);
            return conn;
        }

        public static string Login(string username, string pass)
        {
            string rs = "";
            SqlConnection conn = DBContext();
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
                
            }
            string sql = @"select role from Account where username = @username and password = @pass";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("username", username);
            cmd.Parameters.AddWithValue("pass", pass);
            SqlDataReader r = cmd.ExecuteReader();
            if (r.HasRows && r.Read())
            {
                rs = r.GetString(0);
            }
            conn.Close();

            return rs;
        }

        public static Account getAccount(string username, string password)
        {
            Account acc = null;
            SqlConnection conn = DBContext();
            if ( conn.State == ConnectionState.Closed )
            {
                conn.Open();
            }
            string sql = @"select id, username, password, role, status from Account where username = @username and password = @password";
            SqlCommand cmd = new SqlCommand (sql, conn);
            cmd.Parameters.AddWithValue ("username", username);
            cmd.Parameters.AddWithValue ("password", password);
            SqlDataReader r = cmd.ExecuteReader();
            if (r.HasRows && r.Read())
            {
                acc = new Account
                {
                    id = r.GetInt32(0),
                    username = r.GetString(1),
                    password = r.GetString(2),
                    role = r.GetString(3),
                    status = r.GetInt32(4)
                };
            }
            return acc;
        }


        public static bool checkRegister(string username, string pass, string cpass, string name, string phone, string gender)
        {
            SqlConnection conn = DBContext();
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
               
            }
            if (pass != cpass)
            {
                return false;
            }

            if (phone.Length != 10)
            {
                return false;
            }
            string sql = @"SELECT id FROM Account WHERE username = @username";
            SqlCommand comd = new SqlCommand(sql, conn);
            comd.Parameters.AddWithValue("username", username);
            SqlDataReader r = comd.ExecuteReader();
            if (r.HasRows && r.Read())
            {
                return false;
            }
            
            conn.Close();

            return true;
        }

        //check if username is already registered
        public static bool IsUsernameExists(string username)
        {
            SqlConnection conn = DBContext();
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }

            string sql = @"SELECT id FROM Account WHERE username = @username";
            SqlCommand comd = new SqlCommand(sql, conn);
            comd.Parameters.AddWithValue("username", username);
            SqlDataReader r = comd.ExecuteReader();
            bool exists = r.HasRows;

            conn.Close();

            return exists;
        }

        //check if phone is already registered
        public static bool IsPhoneExists(string phone)
        {
            SqlConnection conn = DBContext();
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }

            string sql = @"SELECT id FROM Customer WHERE phone = @phone"; // Assuming the phone column is in the Customer table
            SqlCommand comd = new SqlCommand(sql, conn);
            comd.Parameters.AddWithValue("phone", phone);
            SqlDataReader r = comd.ExecuteReader();
            bool exists = r.HasRows;

            conn.Close();

            return exists;
        }

        public static void createCustomer(string name, string phone, string username, string password, string gender)
        {
            SqlConnection conn = DBContext();
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string sql = @"INSERT INTO Customer(id, name, phone, gender) Values(@id, @name, @phone, @gender) ";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@id", GetCustomerID(username, password, "CS"));
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@phone", phone);
            cmd.Parameters.AddWithValue("@gender", gender);
            cmd.ExecuteNonQuery();

        }

        private static int GetCustomerID(string username, string password, string role)
        {
            SqlConnection conn = DBContext();
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            addAccount(username, password, role, 1);
            string sql = @"select id from Account where username = @username";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@username", username);
            SqlDataReader r = cmd.ExecuteReader();
            if (r.HasRows && r.Read())
            {
                return r.GetInt32(0);
            }
            
            return -1;
        }

        private static void addAccount(string username, string password, string role, int status)
        {
            SqlConnection conn = DBContext();
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string sql = @"INSERT INTO Account(username, password, role, status) Values(@username, @password, @role, @status)";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.Parameters.AddWithValue("@role", role);
            cmd.Parameters.AddWithValue("@status", status);
            cmd.ExecuteNonQuery();
        }

        // select All products
        public static List<Product> getAllProducts()
        {
            SqlConnection conn = DBContext();
            List<Product> listProduct = new List<Product>();
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string sql = @"select id, name, available_qty, sold_qty, description, cate_id, shop_id, price from Product";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                while(reader.Read())
                {
                    listProduct.Add(new Product()
                    {
                        id = reader.GetInt32(0),
                        name = reader.GetString(1),
                        availabe_qty = reader.GetInt32(2),
                        sold_qty = reader.GetInt32(3),
                        description = reader.GetString(4),
                        cate_id = reader.GetInt32(5),
                        shop_id = reader.GetInt32(6),
                        price = Convert.ToSingle(reader.GetDouble(7)),
                    });
                }
                conn.Close();
            }
            return listProduct;
        }

        //order by product asc
        public static List<Product> getAllProductsBySort(string ca)
        {
            SqlConnection conn = DBContext();
            List<Product> listProduct = new List<Product>();
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string sql = "";
            switch (ca)
            {
                case "A-Z":
                    sql = @"select id, name, available_qty, sold_qty, description, cate_id, shop_id, price from Product order by name asc";
                    break;
                case "Z-A":
                    sql = @"select id, name, available_qty, sold_qty, description, cate_id, shop_id, price from Product order by name desc";
                    break;
                case "NEW":
                    sql = @"select id, name, available_qty, sold_qty, description, cate_id, shop_id, price from Product order by id desc";
                    break;
                case "ALL":
                    sql = @"select id, name, available_qty, sold_qty, description, cate_id, shop_id, price from Product";
                    break;
            }
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    listProduct.Add(new Product()
                    {
                        id = reader.GetInt32(0),
                        name = reader.GetString(1),
                        availabe_qty = reader.GetInt32(2),
                        sold_qty = reader.GetInt32(3),
                        description = reader.GetString(4),
                        cate_id = reader.GetInt32(5),
                        shop_id = reader.GetInt32(6),
                        price = Convert.ToSingle(reader.GetDouble(7)),
                    });
                }
                conn.Close();
            }
            return listProduct;
        }

        //select All Category
        public static List<Category> getAllCategories()
        {
            SqlConnection conn = DBContext();
            List<Category> listcate = new List<Category>();
            if ( conn.State == ConnectionState.Closed )
            {
                conn.Open();
            }
            string sql = "select id, name from Category";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    listcate.Add(new Category() { id = reader.GetInt32(0), name = reader.GetString(1) });
                }
            }
            conn.Close();
            return listcate;
        }

        //select product by category
        public static List<Product> getProductsByCate(int cate_id)
        {
            List<Product> products = new List<Product>();
            SqlConnection conn = DBContext();
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string sql = "";
            if(cate_id == 0)
            {
                sql = @"select id, name, available_qty, sold_qty, description, cate_id, shop_id, price from Product";
            }
            else
            {
                sql = @"select id, name, available_qty, sold_qty, description, cate_id, shop_id, price from Product where cate_id = @cate_id";
            }
            
            SqlCommand cmd = new SqlCommand (sql, conn);
            if (cate_id != 0)
            {
                cmd.Parameters.AddWithValue("@cate_id", cate_id);
            }
            SqlDataReader r = cmd.ExecuteReader();
            if (r.HasRows)
            {
                while(r.Read())
                {
                    products.Add(new Product() {
                        id = r.GetInt32(0),
                        name = r.GetString(1),
                        availabe_qty = r.GetInt32(2),
                        sold_qty = r.GetInt32(3),
                        description = r.GetString(4),
                        cate_id = r.GetInt32(5),
                        shop_id = r.GetInt32(6),
                        price = Convert.ToSingle(r.GetDouble(7)),
                    });
                }
            }
            return products;
        }

        //getProductByID
        public static Product getProductByID(int pid)
        {
            Product products = new Product();
            SqlConnection conn = DBContext();
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string sql = @"select id, name, available_qty, sold_qty, description, cate_id, shop_id, price from Product where id = @pid";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@pid", pid);
            SqlDataReader r = cmd.ExecuteReader();
            if (r.HasRows)
            {
                while (r.Read())
                {
                    products = new Product()
                    {
                        id = r.GetInt32(0),
                        name = r.GetString(1),
                        availabe_qty = r.GetInt32(2),
                        sold_qty = r.GetInt32(3),
                        description = r.GetString(4),
                        cate_id = r.GetInt32(5),
                        shop_id = r.GetInt32(6),
                        price = Convert.ToSingle(r.GetDouble(7)),
                    };
                }
            }
            return products;
        }

        //search product by name 
        //select product by category
        public static List<Product> searchProductsByName(String name)
        {
            List<Product> products = new List<Product>();
            SqlConnection conn = DBContext();
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string sql = @"select id, name, available_qty, sold_qty, description, cate_id, shop_id, price from Product where name like @name";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@name", "%" + name + "%");
            SqlDataReader r = cmd.ExecuteReader();
            if (r.HasRows)
            {
                while (r.Read())
                {
                    products.Add(new Product()
                    {
                        id = r.GetInt32(0),
                        name = r.GetString(1),
                        availabe_qty = r.GetInt32(2),
                        sold_qty = r.GetInt32(3),
                        description = r.GetString(4),
                        cate_id = r.GetInt32(5),
                        shop_id = r.GetInt32(6),
                        price = Convert.ToSingle(r.GetDouble(7)),
                    });
                }
            }
            return products;
        }

        //select All Shop
        public static List<Shop> getShops()
        {
            List<Shop> shops = new List<Shop>();
            SqlConnection conn = DBContext();
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string sql = "select Shop.id, name, description, status from Shop, Account where Shop.id = Account.id";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader r = cmd.ExecuteReader();
            if (r.HasRows)
            {
                while (r.Read())
                {
                    shops.Add(new Shop()
                    {
                        id = r.GetInt32(0),
                        name = r.GetString(1),
                        description = r.GetString(2),
                        status = r.GetInt32(3)
                    });
                }
            }
            return shops;
        }

        //search shops by name
        public static List<Shop> searchShopByName(string name)
        {
            List<Shop> Shops = new List<Shop>();
            SqlConnection conn = DBContext();
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string sql = "select shop.id, name, description, status from Shop, Account where name like @name and Shop.id= Account.id";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@name", "%" + name + "%");
            SqlDataReader r = cmd.ExecuteReader();
            if (r.HasRows)
            {
                while (r.Read())
                {
                    Shops.Add(new Shop()
                    {
                        id = r.GetInt32(0),
                        name = r.GetString(1),
                        description = r.GetString(2),
                        status = r.GetInt32(3)
                    });
                }
            }
            return Shops;
        }


        //select All Customer
        public static List<Customer> getCustomers()
        {
            List<Customer> Customers = new List<Customer>();
            SqlConnection conn = DBContext();
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string sql = "select Customer.id, name, phone, status from Customer, Account where Account.id = Customer.id";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader r = cmd.ExecuteReader();
            if (r.HasRows)
            {
                while (r.Read())
                {
                    Customers.Add(new Customer()
                    {
                        id = r.GetInt32(0),
                        name = r.GetString(1),
                        phone = r.GetString(2),
                        status = r.GetInt32(3)
                    });
                }
            }
            return Customers;
        }

        //search customer by name
        public static List<Customer> searchCustomerByName(string name)
        {
            List<Customer> Customers = new List<Customer>();
            SqlConnection conn = DBContext();
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string sql = "select Customer.id, name, phone, status from Customer, Account where name like @name and Customer.id = Account.id";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@name", "%" + name + "%");
            SqlDataReader r = cmd.ExecuteReader();
            if (r.HasRows)
            {
                while (r.Read())
                {
                    Customers.Add(new Customer()
                    {
                        id = r.GetInt32(0),
                        name = r.GetString(1),
                        phone = r.GetString(2),
                        status = r.GetInt32(3)  
                    });
                }
            }
            return Customers;
        }
        // Add To Cart
        public static bool addToCart(int quantity, float price, int productid, int customerid)
        {
            SqlConnection conn = DBContext();
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string sql = @"Insert into Cart(quantity, price, product_id, customer_id) values(@quantity, @price, @product_id, @customer_id)";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@quantity", quantity);
            cmd.Parameters.AddWithValue("@price", price);
            cmd.Parameters.AddWithValue("@product_id", productid);
            cmd.Parameters.AddWithValue("@customer_id", customerid);
            int rs = cmd.ExecuteNonQuery();
            if (rs > 0)
            {
                return true;
            } 
            conn.Close();
            return false;
        }
        // check existed product in shopping cart
        public static List<Cart> getAllCart(int customerid)
        {
            List<Cart> cart = new List<Cart>();
            SqlConnection conn = DBContext();
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string sql = @"select id, quantity, price, product_id, customer_id from Cart where customer_id = @customer_id";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@customer_id", customerid);
            SqlDataReader r = cmd.ExecuteReader();
            if (r.HasRows)
            {
                while (r.Read())
                {
                    cart.Add(new Cart()
                    {
                        id = r.GetInt32(0),
                        quantity = r.GetInt32(1),
                        price = Convert.ToSingle(r.GetDouble(2)),
                        productid = r.GetInt32(3),
                        customerid = r.GetInt32(4)
                    });
                }
            }
            return cart;
        }
        public static void updateQuantity(int id, int quantity)
        {
            SqlConnection conn = DBContext();
            if (conn.State == ConnectionState.Closed ) 
            { 
                conn.Open();
            }
            string sql = @"update Cart set quantity = @quantity where product_id = @id";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@quantity", quantity);
            cmd.Parameters.AddWithValue("@id", id);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        public static void DeleteCart(int productid)
        {
            SqlConnection conn = DBContext();
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string sql = @"Delete from Cart where product_id = @id";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@id", productid);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        //insert order
        public static void insertOrder(int customerid, float totalprice, int shopid)
        {
            DateTime currentDate = DateTime.Now;
            SqlConnection conn = DBContext();
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string sql = @"Insert into Orders(customer_id, total_price, shop_id, create_date) values(@customer_id, @total_price, @shop_id, @date)";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@customer_id", customerid);
            cmd.Parameters.AddWithValue("@total_price", totalprice + 30);
            cmd.Parameters.AddWithValue("@shop_id", shopid);
            cmd.Parameters.AddWithValue("@date", currentDate);
            cmd.ExecuteNonQuery();
        }
        // get id from order
        private static int getIdByOrder()
        {
            
            SqlConnection conn = DBContext();
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string sql = "select top 1 id from Orders order by id desc";
            SqlCommand cmd = new SqlCommand(sql, conn);
            
            SqlDataReader r = cmd.ExecuteReader();
            if (r.HasRows && r.Read())
            {
                return r.GetInt32(0);
            }
            else
            {
                return -1;
            }
            return 0;
        }
        //
        public static int getShopId(int pid) 
        {
            SqlConnection conn = DBContext();
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string sql = @"select shop_id from Product where id = @productid";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@productid", pid);
            SqlDataReader r = cmd.ExecuteReader();
            if (r.HasRows && r.Read())
            {
                return r.GetInt32(0);
            }
            else
            {
                return -1;
            }
            return 0;
        }

        //insert Order Details
        public static void insertOrderDetails(int productid, string productname, float initprice, int qty)
        {
            int orderid = getIdByOrder();
            SqlConnection conn = DBContext();
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string sql = @"Insert into Order_Detail (order_id, product_id, product_name, init_price, qty) values(@oid, @pid, @pname, @price, @qty)";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@oid", orderid);
            cmd.Parameters.AddWithValue("@pid", productid);
            cmd.Parameters.AddWithValue("@pname", productname);
            cmd.Parameters.AddWithValue("@price", initprice);
            cmd.Parameters.AddWithValue("@qty", qty);
            cmd.ExecuteNonQuery();
        }

        //Ban shop by admin
        public static void BANandUNBANSHOP(string ca, int shopid)
        {
            int orderid = getIdByOrder();
            SqlConnection conn = DBContext();
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string sql = "";
            switch (ca)
            {
                case "BAN":
                    sql = "update Account set status = 0 where id = @shopid";
                    break;
                case "UNBAN":
                    sql = "update Account set status = 1 where id = @shopid";
                    break;
            }
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@shopid", shopid);
            cmd.ExecuteNonQuery();
        }

        //getAllProductByShopid
        public static List<Product> getAllProductByShopID(int shopid)
        {
            List<Product> products = new List<Product>();
            SqlConnection conn = DBContext();
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string sql = @"select id, name, available_qty, sold_qty, description, cate_id, shop_id, price from Product where shop_id = @shop_id";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@shop_id", shopid);
            SqlDataReader r = cmd.ExecuteReader();
            if (r.HasRows)
            {
                while (r.Read())
                {
                    products.Add(new Product()
                    {
                        id = r.GetInt32(0),
                        name = r.GetString(1),
                        availabe_qty = r.GetInt32(2),
                        sold_qty = r.GetInt32(3),
                        description = r.GetString(4),
                        cate_id = r.GetInt32(5),
                        shop_id = r.GetInt32(6),
                        price = Convert.ToSingle(r.GetDouble(7)),
                    });
                }
            }
            return products;
        }

        //insert new Product By Shop
        public static void insertNewProductByShop(string name, int aqty, int sqty, string desc,int cateid,int shopid, float price)
        {
            SqlConnection conn = DBContext();
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string sql = "INSERT INTO Product (name,available_qty,sold_qty,description,cate_id,shop_id,price)VALUES (@name,@aqty,@sqty,@desc,@cateid,@shopid,@price)";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@aqty", aqty);
            cmd.Parameters.AddWithValue("@sqty", 0);
            cmd.Parameters.AddWithValue("@desc", desc);
            cmd.Parameters.AddWithValue("@cateid", cateid);
            cmd.Parameters.AddWithValue("@shopid", shopid);
            cmd.Parameters.AddWithValue("@price", price);
            cmd.ExecuteNonQuery();
            conn.Close();   
        }

        //update product by shop
        public static void updateProductByShop(string name, int aqty, int sqty, string desc, int cateid, float price, int pid)
        {
            SqlConnection conn = DBContext();
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string sql = "update Product set name = @name, available_qty = @aqty, sold_qty = @sqty, description = @desc, cate_id =@cateid, price = @price where id = @pid";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@aqty", aqty);
            cmd.Parameters.AddWithValue("@sqty", sqty);
            cmd.Parameters.AddWithValue("@desc", desc);
            cmd.Parameters.AddWithValue("@cateid", cateid);
            cmd.Parameters.AddWithValue("@price", price);
            cmd.Parameters.AddWithValue("@pid", pid);
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        //delete product by shop
        public static bool deleteProductByShop(int pid)
        {
            SqlConnection conn = DBContext();
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }

            // Check if the product is still in any customer's cart
            string checkSql = @"SELECT COUNT(*) FROM Cart WHERE product_id = @pid";
            SqlCommand checkCmd = new SqlCommand(checkSql, conn);
            checkCmd.Parameters.AddWithValue("@pid", pid);
            int cartCount = (int)checkCmd.ExecuteScalar();

            if (cartCount > 0)
            {
                // Product is still in a customer's cart, prevent deletion
                conn.Close();
                return false;
            }

            // If the product is not in any customer's cart, proceed with deletion
            string deleteSql = @"DELETE FROM Product WHERE id = @pid";
            SqlCommand deleteCmd = new SqlCommand(deleteSql, conn);
            deleteCmd.Parameters.AddWithValue("@pid", pid);
            deleteCmd.ExecuteNonQuery();

            conn.Close();
            return true;
        }
        // get all account
        public static List<Account> getAllAccount()
        {
            List<Account> list = new List<Account>();
            SqlConnection conn = DBContext();
            if ( conn.State == ConnectionState.Closed )
            {
                conn.Open();
            }
            string sql = "select id, username, password, role, status from Account";
            SqlCommand c = new SqlCommand(sql, conn);
            SqlDataReader reader = c.ExecuteReader();
            if (reader.HasRows)
            {
                while(reader.Read())
                {
                    list.Add(new Account()
                    {
                        id = reader.GetInt32(0),
                        username = reader.GetString(1),
                        password = reader.GetString(2),
                        role = reader.GetString(3),
                        status = reader.GetInt32(4)
                    });
                }
            }
            conn.Close();
            return list;
        }
        //get order
        public static List<Order_Detail> getOrder_Details(int customerid)
        {
            List<Order_Detail> list = new List<Order_Detail>();
            SqlConnection conn = DBContext();
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string sql = "select order_id, product_id, product_name, init_price, qty, customer_id, total_price, shop_id, create_date from Order_Detail, Orders where customer_id = @customer_id and Order_Detail.order_id = Orders.id";
            SqlCommand c = new SqlCommand(sql, conn);
            c.Parameters.AddWithValue("@customer_id", customerid);
            SqlDataReader reader = c.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    list.Add(new Order_Detail()
                    {
                        order_id = reader.GetInt32(0),
                        product_id = reader.GetInt32(1),
                        product_name = reader.GetString(2),
                        init_price = Convert.ToSingle(reader.GetDouble(3)),
                        quantity = reader.GetInt32(4),
                        customer_id = reader.GetInt32(5),
                        total_price = Convert.ToSingle(reader.GetDouble(6)),
                        shop_id = reader.GetInt32(7),
                        create_date =  reader.GetDateTime(8),
                    });
                }
            }
            conn.Close();
            return list;
        }

        public static void updateShopQuantity(int pid, int quantity, int availableqty, int soldqty)
        {
            SqlConnection conn = DBContext();
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string sql = "update Product set available_qty = @aqty, sold_qty = @sqty where id = @pid";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@aqty", availableqty-quantity);
            cmd.Parameters.AddWithValue("@sqty", soldqty+quantity);
            cmd.Parameters.AddWithValue("@pid", pid);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        public static void clearCart(int customerid)
        {
            SqlConnection conn = DBContext();
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string sql = "DELETE Cart where customer_id = @customerid";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@customerid", customerid);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}

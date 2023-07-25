using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using DTO;
using Microsoft.EntityFrameworkCore.Diagnostics;

namespace Repository
{
    public static class Repository
    {
        public static string Login(string username, string pass) => BTP_DAO.Login(username, pass);
        public static Account GetAccount(string username, string pass) => BTP_DAO.getAccount(username, pass);    
        public static bool checkRegister(string username, string pass, string cpass, string name, string phone, string gender) => BTP_DAO.checkRegister(username, pass, cpass, name, phone, gender);
        public static void createCustomer(string name, string phone, string username, string password, string gender) => BTP_DAO.createCustomer(name, phone, username, password, gender);
        public static List<Product> getAllProducts() => BTP_DAO.getAllProducts();
        public static List<Category> GetCategories() => BTP_DAO.getAllCategories();

        public static List<Product> GetProductsByCate(int cate_id) => BTP_DAO.getProductsByCate(cate_id);

        public static List<Product> SearchProductsByName(string name) => BTP_DAO.searchProductsByName(name);

        public static List<Product> SortProducts(string ca) => BTP_DAO.getAllProductsBySort(ca);

        public static List<Shop> GetShops() => BTP_DAO.getShops();
        public static List<Shop> SearchShops(string name) => BTP_DAO.searchShopByName(name);
        public static List<Customer> GetCustomers() => BTP_DAO.getCustomers();
        public static List<Customer> SearchCustomers(string name) => BTP_DAO.searchCustomerByName(name);

        public static Product getProductByID(int pid) => BTP_DAO.getProductByID(pid);
        public static bool addToCart(int quantity, float price, int productid, int customerid) => BTP_DAO.addToCart(quantity, price, productid, customerid);
        public static List<Cart> GetCart(int customerid) => BTP_DAO.getAllCart(customerid);
        public static void UpdateQuantity(int id, int quantity) => BTP_DAO.updateQuantity(id, quantity);
        public static void DeleteCart(int productid) => BTP_DAO.DeleteCart(productid);
        public static void insertOrder(int customerid, float totalprice, int shopid) => BTP_DAO.insertOrder(customerid, totalprice, shopid);    
        public static int getShopId(int pid) => BTP_DAO.getShopId(pid);
        public static void insertOrderDetails(int productid, string productname, float initprice, int qty) => BTP_DAO.insertOrderDetails(productid, productname, initprice, qty);
        public static void BANANDUNBANSHOP(String ca, int shopid) => BTP_DAO.BANandUNBANSHOP(ca,shopid);

        public static List<Product> getAllProductByShopID(int sid) => BTP_DAO.getAllProductByShopID(sid);

        public static void insertNewProductByShop(string name, int aqty, int sqty, string desc, int cateid, int shopid, float price) => BTP_DAO.insertNewProductByShop(name, aqty, sqty, desc, cateid, shopid, price);
        public static void updateProductByShop(string name, int aqty, int sqty, string desc, int cateid, float price, int pid) => BTP_DAO.updateProductByShop(name, aqty, sqty, desc, cateid,price,pid);
        public static bool deleteProductByShop(int pid) => BTP_DAO.deleteProductByShop(pid); 
        public static List<Account> getAllAccount() => BTP_DAO.getAllAccount();
        public static List<Order_Detail> GetOrder_Details(int customerid) => BTP_DAO.getOrder_Details(customerid);
        public static void updateShopQuantity(int pid, int quantity, int availableqty, int soldqty) => BTP_DAO.updateShopQuantity(pid, quantity, availableqty, soldqty);
        public static void clearCart(int customerid) => BTP_DAO.clearCart(customerid);
        
    }
}

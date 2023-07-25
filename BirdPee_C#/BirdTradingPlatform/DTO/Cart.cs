using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class Cart
    {
        public int id { get; set; }
        public int quantity { get; set; }
        public float price { get; set; }
        public int productid { get; set; }
        public int customerid { get; set; }
    }
}

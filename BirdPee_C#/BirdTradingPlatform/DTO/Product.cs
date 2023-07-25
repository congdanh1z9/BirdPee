using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class Product
    {
        public int id { get; set; }
        public string name { get; set; }
        public string description { get; set; }
        public int availabe_qty { get; set; }
        public int sold_qty { get; set; }
        public int cate_id { get; set; }
        public int shop_id { get; set; }
        public float price { get; set; }
        
    }
}

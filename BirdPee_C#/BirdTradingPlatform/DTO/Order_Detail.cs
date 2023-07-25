using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class Order_Detail : Order
    {
        public int order_id { get; set; }
        public int product_id { get; set; }    
        public string product_name { get; set; }
        public float init_price { get; set; }
        public int quantity { get; set; }
    }
}

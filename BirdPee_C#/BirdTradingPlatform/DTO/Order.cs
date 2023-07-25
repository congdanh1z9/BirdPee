using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class Order
    {
        public int id { get; set; }
        public int customer_id { get; set; }
        public float total_price { get; set; }
        public int shop_id { get; set; }
        public DateTime create_date { get; set; }
            
    }
}

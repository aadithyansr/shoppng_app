import 'package:ecommc/models/product_s.dart';

final List<Map<String, dynamic>> catMap = [
  {
    "title": "Mobile",
    "images": "assets/img/ipho.jpg",
  },
  {
    "title": "shirt",
    "images": "assets/img/shirt.jpg",
  },
  {
    "title": "electronics",
    "images": "assets/img/elec.jpg",
  },
  {
    "title": "health",
    "images": "assets/img/heal.jpg",
  },
  {
    "title": "gadgets",
    "images": "assets/img/gadgets.jpg",
  },
  {
    "title": "fitness",
    "images": "assets/img/fit.webp",
  },
  {
    "title": "grocery",
    "images": "assets/img/groc.jpg",
  },
  {
    "title": " fashion",
    "images": "assets/img/fash.jpg",
  }
];

List<Map<String, dynamic>> HomPMap = [
  {
    "title": "Iphone 15",
    "images":
        "https://www.apple.com/newsroom/images/2023/09/apple-debuts-iphone-15-and-iphone-15-plus/article/Apple-iPhone-15-lineup-color-lineup-230912_big.jpg.large.jpg",
    "price": "₹66,580"
  },
  {
    "title": "Realme gt6",
    "images":
        "https://imgs.search.brave.com/SDMwRbilaGL68yzRuCWo3EKM2qbDYKD-WCDj-dulUec/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9mZG4u/Z3NtYXJlbmEuY29t/L2ltZ3Jvb3QvbmV3/cy8yNC8wNi9yZWFs/bWUtZ3QtNi1jYW1l/cmEtc2FtcGxlcy9p/bmxpbmUvLTEyMDB3/MS9nc21hcmVuYV8w/MDEuanBn",
    "price": "₹26,000"
  },
  {
    "title": "Boat Airpodes",
    "images":
        "https://imgs.search.brave.com/iZC9rSO9SuK_FhEZPZx3hgiTyV6LKzbCdVehb4fMmu8/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL1Mv/YXBsdXMtbWVkaWEt/bGlicmFyeS1zZXJ2/aWNlLW1lZGlhLzU4/ZjA4M2RmLWUzYjAt/NDAzNi05NDdmLTZl/MDRiNGYyNDMxMS5f/X0NSMCwwLDE0NjQs/NjAwX1BUMF9TWDE0/NjRfVjFfX18uanBn",
    "price": "₹2,599"
  },
  {
    "title": "Power Bank",
    "images":
        "https://imgs.search.brave.com/yAJD8nRWnS2DysgnvmJhgcxNAWfuVPbUW_Bkjxnxlm0/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9yZXMu/Y2xvdWRpbmFyeS5j/b20vdG90YWxtZXJj/aGFuZGlzZS9pbWFn/ZS9mZXRjaC9mX2F1/dG8scV9hdXRvOmVj/byx3XzUwMC9odHRw/czovL3d3dy50b3Rh/bG1lcmNoYW5kaXNl/LmNvLnVrL21lZGlh/L0V4cHJlc3NfMjYw/MG1BaF9UdWJlX1Bv/d2VyX0JhbmtzX2Js/YWNrXzIwMTcuanBn",
    "price": "₹1,980"
  },
  {
    "title": "Nikon Camera",
    "images":
        "https://imgs.search.brave.com/6wLsxlDhHzmR7jws1hgLDGmjlIsWNcMHSAOqqVPAb6c/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly93d3cu/YmhwaG90b3ZpZGVv/LmNvbS9jZG4tY2dp/L2ltYWdlL2Zvcm1h/dD1hdXRvLGZpdD1z/Y2FsZS1kb3duLHdp/ZHRoPTUwMCxxdWFs/aXR5PTk1L2h0dHBz/Oi8vd3d3LmJocGhv/dG92aWRlby5jb20v/aW1hZ2VzL2ltYWdl/czUwMHg1MDAvbmlr/b25fa2V5bWlzc2lv/bl8zNjBfYWN0aW9u/X2NhbWVyYV8xNDUy/MDE4MDIwXzEyMTQz/MDguanBn",
    "price": "₹46,980"
  },
  {
    "title": "dumbell kit combo",
    "images":
        "https://imgs.search.brave.com/6KAdyzAabpKeGKYFa2QOX69O4Q_YXiXAI0TWJMp2rvw/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NTFRLWY1RW14LUwu/anBn",
    "price": "₹3,590"
  },
  {
    "title": "Shirt",
    "images":
        "https://imgs.search.brave.com/13lcK7U9RZ2zk_oYOZyB5XaF-Ud4N3fc2EsrMhpse2s/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly93d3cu/dW50dWNraXQuY29t/L2Nkbi9zaG9wL3By/b2R1Y3RzL0NPT0xJ/REdFLVVOVFVDS0lU/LTQxMTMyUmVkLVNT/LUNPVFRPTi1QUklO/VC1SRUQtMV81NDB4/LmpwZz92PTE2ODE4/MzQ1MzY",
    "price": "₹1,599"
  },
  {
    "title": "Hair wax",
    "images":
        "https://imgs.search.brave.com/W2rZcbOGdLo7oNWFL9ZHXnnGH3Sn8JUHr1T68SaEoQE/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9jZG4u/c2hvcGlmeS5jb20v/cy9maWxlcy8xLzAy/NzcvMzIwMS83MjQ5/L2ZpbGVzL3JlZG9u/ZS13YXgtZ3JlZW4t/LWNvbXByZXNzXzQ4/MHg0ODAud2VicD92/PTE2OTI1NDEwNjg",
    "price": "₹2,155"
  },
];

final products = [
  Product(
      imageUrl:
          "https://imgs.search.brave.com/SDMwRbilaGL68yzRuCWo3EKM2qbDYKD-WCDj-dulUec/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9mZG4u/Z3NtYXJlbmEuY29t/L2ltZ3Jvb3QvbmV3/cy8yNC8wNi9yZWFs/bWUtZ3QtNi1jYW1l/cmEtc2FtcGxlcy9p/bmxpbmUvLTEyMDB3/MS9nc21hcmVuYV8w/MDEuanBn",
      title: "Realme gt6",
      price: 26000),
  Product(
      imageUrl:
          "https://imgs.search.brave.com/6wLsxlDhHzmR7jws1hgLDGmjlIsWNcMHSAOqqVPAb6c/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly93d3cu/YmhwaG90b3ZpZGVv/LmNvbS9jZG4tY2dp/L2ltYWdlL2Zvcm1h/dD1hdXRvLGZpdD1z/Y2FsZS1kb3duLHdp/ZHRoPTUwMCxxdWFs/aXR5PTk1L2h0dHBz/Oi8vd3d3LmJocGhv/dG92aWRlby5jb20v/aW1hZ2VzL2ltYWdl/czUwMHg1MDAvbmlr/b25fa2V5bWlzc2lv/bl8zNjBfYWN0aW9u/X2NhbWVyYV8xNDUy/MDE4MDIwXzEyMTQz/MDguanBn",
      title: "Nikon Camera",
      price: 46799),
  Product(
      imageUrl:
          "https://imgs.search.brave.com/6KAdyzAabpKeGKYFa2QOX69O4Q_YXiXAI0TWJMp2rvw/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NTFRLWY1RW14LUwu/anBn",
      title: "dumbell kit ",
      price: 3999),
  Product(
      imageUrl:
          "https://imgs.search.brave.com/yAJD8nRWnS2DysgnvmJhgcxNAWfuVPbUW_Bkjxnxlm0/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9yZXMu/Y2xvdWRpbmFyeS5j/b20vdG90YWxtZXJj/aGFuZGlzZS9pbWFn/ZS9mZXRjaC9mX2F1/dG8scV9hdXRvOmVj/byx3XzUwMC9odHRw/czovL3d3dy50b3Rh/bG1lcmNoYW5kaXNl/LmNvLnVrL21lZGlh/L0V4cHJlc3NfMjYw/MG1BaF9UdWJlX1Bv/d2VyX0JhbmtzX2Js/YWNrXzIwMTcuanBn",
      title: "Power Bank",
      price: 1980),
  Product(
      imageUrl:
          "https://imgs.search.brave.com/iZC9rSO9SuK_FhEZPZx3hgiTyV6LKzbCdVehb4fMmu8/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL1Mv/YXBsdXMtbWVkaWEt/bGlicmFyeS1zZXJ2/aWNlLW1lZGlhLzU4/ZjA4M2RmLWUzYjAt/NDAzNi05NDdmLTZl/MDRiNGYyNDMxMS5f/X0NSMCwwLDE0NjQs/NjAwX1BUMF9TWDE0/NjRfVjFfX18uanBn",
      title: "Boat Airpodes",
      price: 2599),
  Product(
      imageUrl:
          "https://www.apple.com/newsroom/images/2023/09/apple-debuts-iphone-15-and-iphone-15-plus/article/Apple-iPhone-15-lineup-color-lineup-230912_big.jpg.large.jpg",
      title: "Iphone 15",
      price: 66580),
  Product(
      imageUrl:
          "https://imgs.search.brave.com/W2rZcbOGdLo7oNWFL9ZHXnnGH3Sn8JUHr1T68SaEoQE/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9jZG4u/c2hvcGlmeS5jb20v/cy9maWxlcy8xLzAy/NzcvMzIwMS83MjQ5/L2ZpbGVzL3JlZG9u/ZS13YXgtZ3JlZW4t/LWNvbXByZXNzXzQ4/MHg0ODAud2VicD92/PTE2OTI1NDEwNjg",
      title: "Hair wax",
      price: 1899),
  Product(
      imageUrl:
          "https://imgs.search.brave.com/13lcK7U9RZ2zk_oYOZyB5XaF-Ud4N3fc2EsrMhpse2s/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly93d3cu/dW50dWNraXQuY29t/L2Nkbi9zaG9wL3By/b2R1Y3RzL0NPT0xJ/REdFLVVOVFVDS0lU/LTQxMTMyUmVkLVNT/LUNPVFRPTi1QUklO/VC1SRUQtMV81NDB4/LmpwZz92PTE2ODE4/MzQ1MzY",
      title: "Shirt",
      price: 1266),
];

final categors = [
  Category(
      title: 'Mobiles',
      image:
          "https://imgs.search.brave.com/bq3XnaxoEpnPoyXURHkRds93CzA7PC10Diqu3vZrszc/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9m/dXR1cmlzdGljLWdh/bGF4eS1tb2JpbGUt/cGhvbmUtY29ubmVj/dHMtd2l0aC13aXJl/bGVzcy10ZWNobm9s/b2d5LWdlbmVyYXRl/ZC1ieS1haV8xODg1/NDQtMjk2NTUuanBn/P3NpemU9NjI2JmV4/dD1qcGc"),
  Category(
      title: 'Gadgets',
      image:
          "https://imgs.search.brave.com/VUwgeegEWBVzQ6fpQRUQ4GvNPczxO0ITIrStlPBLeaA/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/cHJlbWl1bS1waG90/by9mbGF0LWxheS1t/b2Rlcm4tdGVjaC1n/YWRnZXRzLWluY2x1/ZGluZy12ci1oZWFk/c2V0LWhlYWRwaG9u/ZXMtc21hcnRwaG9u/ZS1jYW1lcmEtbW91/c2VfMTQxMTctNzg3/OTI4LmpwZz9zaXpl/PTYyNiZleHQ9anBn"),
  Category(
      title: 'Beauty',
      image:
          "https://imgs.search.brave.com/z53aMBk71AFcom98OO1D5oNRk7WTuAlGOI6sSOeDGfw/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvOTI2/MTY4NTQ4L3Bob3Rv/L21ha2V1cC1iYWct/d2l0aC12YXJpZXR5/LW9mLWJlYXV0eS1w/cm9kdWN0cy5qcGc_/cz02MTJ4NjEyJnc9/MCZrPTIwJmM9d0Q3/NUVlWWxta1k0SWRH/dThPSWlRdGJiUmdj/a2ZsbVBFZ1FTcWtf/NC1Edz0"),
  Category(
      title: 'kitchen',
      image:
          "https://imgs.search.brave.com/K3wCL4jDtbDhm0cnmkLnGjYO7OPgvv3upsMZgxCdW8Y/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvNzc5/MzIwNTgvcGhvdG8v/a2l0Y2hlbi11dGVu/c2lscy1pbi1jb250/YWluZXJzLW9uLXRh/YmxlLmpwZz9zPTYx/Mng2MTImdz0wJms9/MjAmYz1yNUZIUWFa/cDFaY0doR3VBOVlY/ZnNLU2dyQXllRmh0/NUpfeEtod0gzNW40/PQ"),
  Category(
      title: 'Appliances',
      image:
          "https://imgs.search.brave.com/wl_pDSL6kqSX6lTC9htHK-8L_vaBjvIbZTwBlo3ejv0/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzL2I1LzI3/LzFjL2I1MjcxYzEw/NTFkNDMwZGEzZDM4/MzA2OWM0MTk4OGE2/LmpwZw"),
  Category(
      title: 'Fitness',
      image:
          "https://imgs.search.brave.com/p31A1uPtsKrjqkW1oZQh7QdZNC0UPEvn2h1lpRiQ4lE/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudW5zcGxhc2gu/Y29tL3Bob3RvLTE1/NDE1MzQ3NDE2ODgt/NjA3OGM2YmZiNWM1/P2ZtPWpwZyZxPTYw/Jnc9MzAwMCZpeGxp/Yj1yYi00LjAuMyZp/eGlkPU0zd3hNakEz/ZkRCOE1IeHpaV0Z5/WTJoOE1UUjhmR1pw/ZEc1bGMzTjhaVzU4/TUh4OE1IeDhmREE9.jpeg"),
  Category(
      title: 'health',
      image:
          "https://imgs.search.brave.com/Ku066n5i27tIT6y5RlFQ0i98nlU3AADAJkYHPENmIRU/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by90/b3Atdmlldy12YXJp/ZXR5LW1lZGljaW5l/LXRhYmxldHNfMjMt/MjE0ODUyOTc2OS5q/cGc_c2l6ZT02MjYm/ZXh0PWpwZw")
];

final carous = [
  Carou(
      image:
          "https://www.boat-lifestyle.com/cdn/shop/articles/ANC_for_Work-_How_Noise-Canceling_Headphones_Can_Boost_Productivity.png?v=1709883646"),
  Carou(
      image:
          "https://www.boat-lifestyle.com/cdn/shop/articles/sd.jpg?v=1659088152"),
  Carou(
      image:
          "https://media6.ppl-media.com/tr:dpr-2,dpr-2/mediafiles/ecomm/misc/1724780828_mamaearth_everday_makeup_2596x836.jpeg"),
  Carou(
      image:
          "https://st-images.honasa.in/Website_27th_ca56025d50.jpg?format=auto&width=&qualilty="),
  Carou(
      image:
          "https://www.boat-lifestyle.com/cdn/shop/files/WS-WEB5999_1600x.jpg?v=1724385291"),
  Carou(
      image:
          "https://i.dell.com/is/image/DellContent/content/dam/documents-and-videos/dv2/b2b/en/product-launch/latitude/fy25-latitude-family/site-banners/bb2501g0003-gl-bb-site-banner-fy25-latitude-9450-800x620.png?fmt=png-alpha&wid=800&hei=620")
];

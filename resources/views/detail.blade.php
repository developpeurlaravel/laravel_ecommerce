@extends('master')
@section("content")
<style>
@import url("https://fonts.googleapis.com/css2?family=Baloo+Thambi+2&family=Raleway&family=Rubik&display=swap");
/*              Sass Template           */
/*  global classes  */
button, button:focus {
    outline: none !important;
    box-shadow: none !important;
}

/* typography classes */
.font-baloo {
    font-family: "Baloo Thambi 2", cursive;
}

.font-rale {
    font-family: "Raleway", cursive;
}

.font-rubik {
    font-family: "Rubik", cursive;
}

.font-size-12 {
    font-size: 12px;
}

.font-size-14 {
    font-size: 14px;
}

.font-size-16 {
    font-size: 16px;
}

.font-size-20 {
    font-size: 20px;
}

/* Color Template  */
.color-primary {
    color: #003859;
}

.color-primary-bg {
    background: #003859;
}

.color-second {
    color: #00A5C4;
}

.color-second-bg {
    background: #00A5C4;
}

.color-yellow {
    color: #FFD289;
}

.color-yellow-bg {
    background: #FFD289;
}

/*  top sale template   */
#top-sale .owl-carousel .item .product a {
    overflow: hidden;
}
#top-sale .owl-carousel .item .product img {
    transition: transform 0.5s ease;
}
#top-sale .owl-carousel .item .product img:hover {
    transform: scale(1.1);
}
#top-sale .owl-carousel .owl-nav button {
    position: absolute;
    top: 30%;
    outline: none;
}
#top-sale .owl-carousel .owl-nav button.owl-prev {
    left: 0;
}
#top-sale .owl-carousel .owl-nav button.owl-prev span,
#top-sale .owl-carousel .owl-nav button.owl-next span {
    font-size: 35px;
    color: #003859;
    padding: 0 1rem;
}
#top-sale .owl-carousel .owl-nav button.owl-prev span {
    margin-left: -4rem;
}
#top-sale .owl-carousel .owl-nav button.owl-next {
    right: 0;
}
#top-sale .owl-carousel .owl-nav button.owl-next span {
    margin-right: -4rem;
}

/*   Special Price Section Template */
#special-price .grid .grid-item {
    margin-right: 1.2rem;
    margin-top: 1rem;
}

/*# sourceMappingURL=style.css.map */

</style>
<div class="container">
   <div class="row">
       <div class="col-sm-6">
       <img class="detail-img" src="{{$product['gallery']}}" alt="">
       </div>
       <div class="col-sm-6">
           <a href="/">Go Back</a>
       <h2>{{$product['name']}}</h2>
       <div class="d-flex">
        <div class="rating text-warning font-size-12">
            <span><i class="fas fa-star"></i></span>
            <span><i class="fas fa-star"></i></span>
            <span><i class="fas fa-star"></i></span>
            <span><i class="fas fa-star"></i></span>
            <span><i class="far fa-star"></i></span>
        </div>
        <a href="#" class="px-2 font-rale font-size-14">20,534 ratings | 1000+ answered questions</a>
    </div>
       <h3>Price : {{$product['price']}}</h3>
       <h4>Details: {{$product['description']}}</h4>
       <h4>category: {{$product['category']}}</h4>
       <br><br>

    <hr class="m-0">
          <!--    #policy -->
          <div id="policy">
            <div class="d-flex">
                <div class="return text-center mr-5">
                    <div class="font-size-20 my-2 color-second">
                        <span class="fas fa-retweet border p-3 rounded-pill"></span>
                    </div>
                    <a href="#" class="font-rale font-size-12">10 Days <br> Replacement</a>
                </div>
                <div class="return text-center mr-5">
                    <div class="font-size-20 my-2 color-second">
                        <span class="fas fa-truck  border p-3 rounded-pill"></span>
                    </div>
                    <a href="#" class="font-rale font-size-12">Daily Tuition <br>Deliverd</a>
                </div>
                <div class="return text-center mr-5">
                    <div class="font-size-20 my-2 color-second">
                        <span class="fas fa-check-double border p-3 rounded-pill"></span>
                    </div>
                    <a href="#" class="font-rale font-size-12">1 Year <br>Warranty</a>
                </div>
            </div>
        </div><hr>
 <!-- order-details -->
 <div id="order-details" class="font-rale d-flex flex-column text-dark">
    <small>Delivery by : Mar 29  - Apr 1</small>
    <small>Sold by <a href="#">Daily Electronics </a>(4.5 out of 5 | 18,198 ratings)</small>
    <small><i class="fas fa-map-marker-alt color-primary"></i>&nbsp;&nbsp;Deliver to Customer - 424201</small>
</div>
<!-- !order-details -->

                <!-- color -->
                <div class="color my-3">
                    <div class="d-flex justify-content-between">
                        <h6 class="font-baloo">Color:</h6>
                        <div class="p-2 color-yellow-bg rounded-circle"><button class="btn font-size-14"></button></div>
                        <div class="p-2 color-primary-bg rounded-circle"><button class="btn font-size-14"></button></div>
                        <div class="p-2 color-second-bg rounded-circle"><button class="btn font-size-14"></button></div>
                    </div>
                </div>
                <!-- !color -->

       <form action="/add_to_cart" method="POST">
           @csrf
           <input type="hidden" name="product_id" value={{$product['id']}}>
       <button class="btn btn-info mt-5" >Add to Cart</button>

       </form>
       <br><br>
       <button class="btn btn-warning">Buy Now</button>
       <br><br>
<hr><hr>
<div>
    <h6 class="font-rubik">Product Description</h6>
    <hr>
    <p class="font-rale font-size-14">Understanding how to write a product description requires putting yourself in the shoes of your audience. When you write a product description with a huge crowd of buyers in mind, your descriptions become wishy-washy and you end up addressing no one at all.

        The best product descriptions address your target audience directly and personally. You ask and answer questions as if you’re having a conversation with them. You choose the words your ideal buyer uses. You use the word “you.”

        This is how retailer The Oodie starts the product description for its I Love Plants Oodie in the first of our product description examples.</p>
</div>
    </div>

   </div>
</div>
@endsection

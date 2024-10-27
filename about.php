<?php

include 'includes/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
};

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>About</title>

   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<!-- header section starts  -->
<?php include 'includes/user_header.php'; ?>
<!-- header section ends -->

<div class="heading">
   <h3>about us</h3>
   <p><a href="home.php">Home</a> <span> / About</span></p>
</div>

<!-- about section starts  -->

<section class="about">

   <div class="row">

      <div class="image">
         <img src="images/about-us.jpg" alt="">
      </div>

      <div class="content">
         <h3>why choose us?</h3>
         <p><b>Freshness Guaranteed:</b> We source only the freshest flowers to ensure your arrangements are vibrant and long-lasting.<br>

<b>Unique & Personalized Designs:</b> Our talented florists create one-of-a-kind arrangements tailored to your needs, style, and occasion.<br>

<b>Exceptional Customer Service:</b> We’re passionate about making your floral experience delightful from start to finish.<br>

<b>Eco-Friendly Practices:</b> We’re dedicated to sustainability, from sourcing locally-grown flowers to using eco-friendly packaging.<br>

<b>Timely & Reliable Delivery:</b> We understand the importance of timing when it comes to special occasions.<br>
</p>
         <a href="menu.php" class="btn">our products</a>
      </div>

   </div>

</section>

<!-- about section ends -->

<!-- steps section starts  -->

<section class="steps">

   <h1 class="title">simple steps</h1>

   <div class="box-container">

      <div class="box">
         <img src="images/choose-order.webp" alt="">
         <h3>choose order</h3>
         <p></p>
      </div>

      <div class="box">
         <img src="images/fast-delivery.webp" alt="">
         <h3>fast delivery</h3>
         <p></p>
      </div>

      <div class="box">
         <img src="images/enjoy.webp" alt="">
         <h3>enjoy our servie</h3>
         <p></p>
      </div>

   </div>

</section>

<!-- steps section ends -->

<!-- reviews section starts  -->

<section class="reviews">

   <h1 class="title">Customer's Reviews</h1>

   <div class="swiper reviews-slider">

      <div class="swiper-wrapper">

         <div class="swiper-slide slide">
            <img src="images/customer-review.webp" alt="">
            <p>I ordered a bouquet for my mom's birthday, and it was absolutely stunning! The flowers were so fresh, and the arrangement was even more beautiful than I imagined. The customer service was excellent, and they made sure it arrived on time. I'll definitely be ordering again!</p>
            <div class="stars">
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Emily</h3>
         </div>

         <div class="swiper-slide slide">
            <img src="images/customer-review.webp" alt="">
            <p>The team went above and beyond to create a custom arrangement for my wedding anniversary, and my wife was thrilled! They listened to exactly what I wanted, and the flowers were so vibrant and unique. Truly impressive quality and service!</p>
            <div class="stars">
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Micheal</h3>
         </div>

         <div class="swiper-slide slide">
            <img src="images/customer-review.webp" alt="">
            <p>I’ve used a lot of florists, but this shop is by far the best. The flowers are always fresh and last so long! I also appreciate their eco-friendly practices – it feels good knowing they prioritize sustainability. Highly recommend!</p>
            <div class="stars">
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Sarah</h3>
         </div>

         <div class="swiper-slide slide">
            <img src="images/customer-review.webp" alt="">
            <p>Absolutely loved the bouquet I received! The arrangement was so creative and full of beautiful colors. I needed something special for a last-minute gift, and they managed to deliver it right on time. Amazing service!</p>
            <div class="stars">
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Natalie</h3>
         </div>

         <div class="swiper-slide slide">
            <img src="images/customer-review.webp" alt="">
            <p>I ordered flowers online and was a bit nervous, but they exceeded my expectations! The shop kept me updated throughout the delivery, and the bouquet looked just like the picture, if not better. Highly recommend for any special occasion!</p>
            <div class="stars">
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Wangari</h3>
         </div>

         <div class="swiper-slide slide">
            <img src="images/customer-review.webp" alt="">
            <p>Such a wonderful experience every time! Their arrangements are always on point, and the staff is super friendly and knowledgeable. I love that they offer unique flowers you can’t find anywhere else. This shop is my go-to for all my floral needs!</p>
            <div class="stars">
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Brian</h3>
         </div>

      </div>

      <div class="swiper-pagination"></div>

   </div>

</section>

<!-- reviews section ends -->


<!-- footer section starts  -->
<?php include 'includes/footer.php'; ?>
<!-- footer section ends -->

<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="js/script.js"></script>

<script>

var swiper = new Swiper(".reviews-slider", {
   loop:true,
   grabCursor: true,
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable:true,
   },
   breakpoints: {
      0: {
      slidesPerView: 1,
      },
      700: {
      slidesPerView: 2,
      },
      1024: {
      slidesPerView: 3,
      },
   },
});

</script>

</body>
</html>
<?php

include 'components/connect.php';

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
   
<?php include 'components/user_header.php'; ?>

<section class="about">

   <div class="row">

      <div class="image">
         <img src="images/image.png" alt="">
      </div>

      <div class="content">
         <br>
         <h3>About us:</h3>
         <p>Welcome to Adekal.co, where fashion meets elegance. Our boutique was founded with a passion for style and a commitment to quality, offering the latest trends in women's fashion. Our mission is to empower women to express their individuality through thoughtfully curated, high-quality clothing and accessories.</p>
         <h3>Our Story:</h3>
         <p>Born from a desire to bring accessible luxury to every woman's wardrobe, Adekal.co blends contemporary designs with timeless elegance. Each piece in our collection reflects our values of sophistication, comfort, and sustainability.</p>
         <a href="contact.php" class="btn">Contact Us</a>
      </div>

   </div>

</section>

<section class="reviews">
   
   <h1 class="heading">Client's Reviews.</h1>

   <div class="swiper reviews-slider">

   <div class="swiper-wrapper">

      <div class="swiper-slide slide">
         <img src="images/pic-5.png" alt="">
         <p>I've been really impressed with Adekal.co Boutique. The clothes are not only stylish and high-quality but also sustainably made, which is important to me. The selection is great, and the customer service is friendly and responsive. It's definitely a place I will continue to shop at and recommend to others.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3> <a href="https://www.facebook.com/" target="_blank">Ziviyar Khan</a></h3>
      </div>

      <div class="swiper-slide slide">
         <img src="images/pic-1.png" alt="">
         <p>I absolutely love shopping at Adekal.co Boutique! The quality of the clothing is exceptional, and the designs are both chic and timeless. I always find something unique that makes me feel confident and stylish. The customer service is also top-notch, making the whole shopping experience a delight.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
         </div>
         <h3><a href="https://www.facebook.com/" target="_blank">Emma Lariab</a></h3>
      </div>

      <div class="swiper-slide slide">
         <img src="images/pic-3.png" alt="">
         <p>I've been shopping at Adekal.co Boutique for gifts for my wife, and she loves everything I get her. The quality and design of the clothing are outstanding. The customer service team is always helpful and friendly.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3><a href="https://www.facebook.com/" target="_blank">Sami Shah</a></h3>
      </div>

      <div class="swiper-slide slide">
         <img src="images/pic-2.png" alt="">
         <p>Shopping at Adekal.co Boutique has been a wonderful experience. The clothing is beautifully crafted, and the attention to detail is impressive. I’ve purchased several items for my sister, and she’s always thrilled with the fit and style. The sustainability efforts of the boutique make it even better.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3><a href="https://www.facebook.com/" target="_blank">Subash dawood</a></h3>
      </div>

      <div class="swiper-slide slide">
         <img src="images/pic-6.png" alt="">
         <p>Adekal.co Boutique has become my go-to for fashion. The sustainable practices and ethical sourcing make me feel good about my purchases. The pieces are beautifully made and always get me compliments. Plus, the delivery is always fast and reliable.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3><a href="https://www.facebook.com/pra.x.nil"  target="_blank">Zainab asim</a></h3>
      </div>

      <div class="swiper-slide slide">
         <img src="images/pic-4.png" alt="">
         <p>Adekal.co Boutique offers a fantastic range of stylish and high-quality clothing. My girlfriend introduced me to this boutique, and now it's our favorite place to shop together. The customer service is excellent, and the website is easy to navigate. Highly recommend!</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3><a href="https://www.facebook.com/" target="_blank">Rayan Haider</a></h3>
      </div>

      

   </div>

   <div class="swiper-pagination"></div>

   </div>

</section>









<?php include 'components/footer.php'; ?>

<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

<script src="js/script.js"></script>

<script>

var swiper = new Swiper(".reviews-slider", {
   loop:true,
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable:true,
   },
   breakpoints: {
      0: {
        slidesPerView:1,
      },
      768: {
        slidesPerView: 2,
      },
      991: {
        slidesPerView: 3,
      },
   },
});

</script>

</body>
</html>
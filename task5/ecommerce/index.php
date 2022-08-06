<?php

use App\Database\Models\Order_product;
use App\Database\Models\Product;
use App\Database\Models\Brand;

include_once './init.php';
$title = "Ecommerce";
include_once $dir__lay . 'header.php';
include_once $dir__lay . 'navbar.php';
$order_product = new Order_product;
$productModel = new Product;
$brandModel = new Brand;
$brandRows = $brandModel->all()->fetch_all(MYSQLI_ASSOC);
?>
<!-- Product Area Start -->
<div class="product-area bg-image-1 pt-100 pb-95">
	<div class="container">
		<div class="product-top-bar section-border mb-55">
			<div class="section-title-wrap text-center">
				<h3 class="section-title">Popular Products</h3>
			</div>
		</div>
		<div class="featured-product-active hot-flower owl-carousel product-nav">
			<?php
			/** Get Popular Products IDs **/
			$order_productRows = $order_product->mostSold()->fetch_all();
			$popProductsIds = '';
			foreach ($order_productRows as $order_productIndex => $order_productRow) {
				// check if word is duplicated or already added
				if (str_contains($popProductsIds, $order_productRow[1])) {
					// check if current loop is the last AND The last character is ',' => then remove the last ","
					if ($order_productIndex == count($order_productRows) - 1 && substr($popProductsIds, -1) == ',') {
						$popProductsIds = substr_replace($popProductsIds, "", -1);
					}
					// Pass
					continue;
				}
				// check if current loop is the last, Then add only {$id} || Else add {$id} and ','
				if ($order_productIndex == count($order_productRows) - 1) {
					$popProductsIds .= $order_productRow[1];
				} else {
					$popProductsIds .= $order_productRow[1] . ",";
				}
			}
			/****/
			// Get Most Sold Products Data
			$popProductsRows = $productModel->all(['*'], [["id", "IN", "({$popProductsIds})"]])->fetch_all(MYSQLI_ASSOC);
			foreach ($popProductsRows as $product) {
			?>
				<div class="product-wrapper">
					<div class="product-img">
						<a href="product-details.html">
							<img alt="" src="assets/img/product/<?= $product['image'] ?>">
						</a>
						<div class="product-action">
							<a class="action-wishlist" href="#" title="Wishlist">
								<i class="ion-android-favorite-outline"></i>
							</a>
							<a class="action-cart" href="#" title="Add To Cart">
								<i class="ion-ios-shuffle-strong"></i>
							</a>
							<a class="action-compare" href="#" data-target="#exampleModal" data-toggle="modal" title="Quick View">
								<i class="ion-ios-search-strong"></i>
							</a>
						</div>
					</div>
					<div class="product-content text-left">
						<div class="product-hover-style">
							<div class="product-title">
								<h4>
									<a href="product-details.html"><?= $product['name_en'] ?></a>
								</h4>
							</div>
							<div class="cart-hover">
								<h4><a href="product-details.html">+ Add to cart</a></h4>
							</div>
						</div>
						<div class="product-price-wrapper">
							<span><?= number_format($product['price'], 2) ?> EGP</span>
						</div>
					</div>
				</div>
			<?php
			}
			?>
		</div>
	</div>
</div>
<!-- Product Area End -->
<!-- Banner Start -->
<div class="banner-area pt-100 pb-70">
	<div class="container">
		<div class="banner-wrap">
			<div class="row">
				<div class="col-lg-6 col-md-6">
					<div class="single-banner img-zoom mb-30">
						<a href="#">
							<img src="assets/img/banner/banner-1.png" alt="">
						</a>
						<div class="banner-content">
							<h4>-50% Sale</h4>
							<h5>Summer Vacation</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<div class="single-banner img-zoom mb-30">
						<a href="#">
							<img src="assets/img/banner/banner-2.png" alt="">
						</a>
						<div class="banner-content">
							<h4>-20% Sale</h4>
							<h5>Winter Vacation</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Banner End -->
<!-- New Products Start -->
<?php
$newProducts = $productModel->all(['*'], [], "ORDER BY `created_at` DESC LIMIT 8")->fetch_all(MYSQLI_ASSOC);
?>
<div class="product-area gray-bg pt-90 pb-65">
	<div class="container">
		<div class="product-top-bar section-border mb-55">
			<div class="section-title-wrap text-center">
				<h3 class="section-title">New Products</h3>
			</div>
		</div>
		<div class="tab-content jump">
			<div class="tab-pane active">
				<div class="featured-product-active owl-carousel product-nav">
					<?php
					foreach ($newProducts as $product) {
					?>
						<div class="product-wrapper">
							<div class="product-img">
								<a href="product-details.html">
									<img alt="" src="assets/img/product/<?= $product['image'] ?>">
								</a>
								<div class="product-action">
									<a class="action-wishlist" href="#" title="Wishlist">
										<i class="ion-android-favorite-outline"></i>
									</a>
									<a class="action-cart" href="#" title="Add To Cart">
										<i class="ion-ios-shuffle-strong"></i>
									</a>
									<a class="action-compare" href="#" data-target="#exampleModal" data-toggle="modal" title="Quick View">
										<i class="ion-ios-search-strong"></i>
									</a>
								</div>
							</div>
							<div class="product-content text-left">
								<div class="product-hover-style">
									<div class="product-title">
										<h4>
											<a href="product-details.html"><?= $product['name_en'] ?></a>
										</h4>
									</div>
									<div class="cart-hover">
										<h4><a href="product-details.html">+ Add to cart</a></h4>
									</div>
								</div>
								<div class="product-price-wrapper">
									<span><?= $product['price'] ?> EGP</span>
								</div>
							</div>
						</div>
					<?php
					}
					?>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- New Products End -->
<!-- Testimonial Area Start -->
<div class="testimonials-area bg-img pt-100 pb-100">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-12">
				<div class="testimonial-active owl-carousel">
					<div class="single-testimonial text-center">
						<div class="testimonial-img">
							<img alt="" src="assets/img/icon-img/testi.png">
						</div>
						<p>Lorem ipsum dolor sit amet, consectetur adipisici elit, sed do eiusmod tempor incididunt ut labore</p>
						<h4>Gregory Perkins</h4>
						<h5>Customer</h5>
					</div>
					<div class="single-testimonial text-center">
						<div class="testimonial-img">
							<img alt="" src="assets/img/icon-img/testi.png">
						</div>
						<p>Lorem ipsum dolor sit amet, consectetur adipisici elit, sed do eiusmod tempor incididunt ut labore</p>
						<h4>Khabuli Teop</h4>
						<h5>Marketing</h5>
					</div>
					<div class="single-testimonial text-center">
						<div class="testimonial-img">
							<img alt="" src="assets/img/icon-img/testi.png">
						</div>
						<p>Lorem ipsum dolor sit amet, consectetur adipisici elit, sed do eiusmod tempor incididunt ut labore </p>
						<h4>Lotan Jopon</h4>
						<h5>Admin</h5>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Testimonial Area End -->
<!-- Product Area Start -->
<div class="product-area bg-image-1 pt-100 pb-95">
    <div class="container">
        <div class="row">
            <?php foreach($brandRows as $brand) { ?>
            <div class="col-3">
                <div class="product-img">
                    <a href="shop.php?brand=<?= $brand['id'] ?>">
                        <img alt="" src="assets/img/brand-logo/<?= $brand['image'] ?>">
                    </a>
                </div>
            </div>
            <?php } ?>

        </div>
    </div>
</div>
<!-- Product Area End -->
<!-- Newsletter Araea Start -->
<div class="newsletter-area bg-image-2 pt-90 pb-100">
	<div class="container">
		<div class="product-top-bar section-border mb-45">
			<div class="section-title-wrap text-center">
				<h3 class="section-title">Join to our Newsletter</h3>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row justify-content-md-center">
			<div class="col-lg-6 col-md-10 col-md-auto">
				<div class="footer-newsletter">
					<div id="mc_embed_signup" class="subscribe-form">
						<form action="http://devitems.us11.list-manage.com/subscribe/post?u=6bbb9b6f5827bd842d9640c82&amp;id=05d85f18ef" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
							<div id="mc_embed_signup_scroll" class="mc-form">
								<input type="email" value="" name="EMAIL" class="email" placeholder="Your Email Address*" required>
								<!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
								<div class="mc-news" aria-hidden="true"><input type="text" name="b_6bbb9b6f5827bd842d9640c82_05d85f18ef" tabindex="-1" value=""></div>
								<div class="submit-button">
									<input type="submit" value="Subscribe" name="subscribe" id="mc-embedded-subscribe" class="button">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Newsletter Araea End -->
<!-- Footer style Start -->
<?php
include_once $dir__lay . "footer.php";
?>
<!-- Footer style End -->
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">x</span></button>
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="col-md-5 col-sm-5 col-xs-12">
						<!-- Thumbnail Large Image start -->
						<div class="tab-content">
							<div id="pro-1" class="tab-pane fade show active">
								<img src="assets/img/product-details/product-detalis-l1.jpg" alt="">
							</div>
							<div id="pro-2" class="tab-pane fade">
								<img src="assets/img/product-details/product-detalis-l2.jpg" alt="">
							</div>
							<div id="pro-3" class="tab-pane fade">
								<img src="assets/img/product-details/product-detalis-l3.jpg" alt="">
							</div>
							<div id="pro-4" class="tab-pane fade">
								<img src="assets/img/product-details/product-detalis-l4.jpg" alt="">
							</div>
						</div>
						<!-- Thumbnail Large Image End -->
						<!-- Thumbnail Image End -->
						<div class="product-thumbnail">
							<div class="thumb-menu owl-carousel nav nav-style" role="tablist">
								<a class="active" data-toggle="tab" href="#pro-1"><img src="assets/img/product-details/product-detalis-s1.jpg" alt=""></a>
								<a data-toggle="tab" href="#pro-2"><img src="assets/img/product-details/product-detalis-s2.jpg" alt=""></a>
								<a data-toggle="tab" href="#pro-3"><img src="assets/img/product-details/product-detalis-s3.jpg" alt=""></a>
								<a data-toggle="tab" href="#pro-4"><img src="assets/img/product-details/product-detalis-s4.jpg" alt=""></a>
							</div>
						</div>
						<!-- Thumbnail image end -->
					</div>
					<div class="col-md-7 col-sm-7 col-xs-12">
						<div class="modal-pro-content">
							<h3>Dutchman's Breeches </h3>
							<div class="product-price-wrapper">
								<span class="product-price-old">£162.00 </span>
								<span>£120.00</span>
							</div>
							<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet.</p>
							<div class="quick-view-select">
								<div class="select-option-part">
									<label>Size*</label>
									<select class="select">
										<option value="">S</option>
										<option value="">M</option>
										<option value="">L</option>
									</select>
								</div>
								<div class="quickview-color-wrap">
									<label>Color*</label>
									<div class="quickview-color">
										<ul>
											<li class="blue">b</li>
											<li class="red">r</li>
											<li class="pink">p</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="product-quantity">
								<div class="cart-plus-minus">
									<input class="cart-plus-minus-box" type="text" name="qtybutton" value="02">
								</div>
								<button>Add to cart</button>
							</div>
							<span><i class="fa fa-check"></i> In stock</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Modal end -->


<!-- all js here -->
<?php include_once $dir__lay . 'scripts.php' ?>
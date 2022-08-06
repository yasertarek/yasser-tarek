<?php

use App\Database\Models\Category;
use App\Database\Models\Subcategory;

$categoryObject = new Category;
$categories = $categoryObject->all(['id', 'name_en'])->fetch_all(MYSQLI_ASSOC);
$subcategoryObject = new Subcategory;
?>
<header class="header-area gray-bg clearfix">
    <div class="header-bottom">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-4 col-6">
                    <div class="logo">
                        <a href="<?= $root ?>">
                            <img alt="" src="assets/img/logo/logo.png">
                        </a>
                    </div>
                </div>
                <div class="col-lg-9 col-md-8 col-6">
                    <div class="header-bottom-right">
                        <div class="main-menu">
                            <nav>
                                <ul>
                                    <li class="top-hover"><a href="<?= $root ?>">home</a>
                                    </li>
                                    <li><a href="about-us.html">about</a></li>
                                    <li class="mega-menu-position top-hover"><a href="shop.php">shop</a>
                                        <ul class="mega-menu">
                                            <?php foreach ($categories as $category) { ?>
                                                <li>
                                                    <ul>
                                                        <li class="mega-menu-title">
                                                            <a class="font-weight-bold" href="shop.php?category=<?= $category['id'] ?>"><?= $category['name_en'] ?></a>
                                                        </li>
                                                        <?php
                                                        $subcategoryObject->setCategory_id($category['id']);
                                                        $subcategories = $subcategoryObject->getSubsByCat()->fetch_all(MYSQLI_ASSOC);
                                                        foreach ($subcategories as $subcategory) { ?>
                                                            <li><a href="shop.php?subcategory=<?= $subcategory['id'] ?>"><?= $subcategory['name_en'] ?></a></li>
                                                        <?php } ?>
                                                    </ul>
                                                </li>
                                            <?php } ?>
                                        </ul>
                                    </li>
                                    <li class="top-hover"><a href="blog-left-sidebar.html">blog</a>
                                        <ul class="submenu">
                                            <li><a href="blog-masonry.html">Blog Masonry</a></li>
                                            <li><a href="#">Blog Standard <span><i class="ion-ios-arrow-right"></i></span></a>
                                                <ul class="lavel-menu">
                                                    <li><a href="blog-left-sidebar.html">left sidebar</a></li>
                                                    <li><a href="blog-right-sidebar.html">right sidebar</a></li>
                                                    <li><a href="blog-no-sidebar.html">no sidebar</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">Post Types <span><i class="ion-ios-arrow-right"></i></span> </a>
                                                <ul class="lavel-menu">
                                                    <li><a href="blog-details-standerd.html">Standard post</a></li>
                                                    <li><a href="blog-details-audio.html">audio post</a></li>
                                                    <li><a href="blog-details-video.html">video post</a></li>
                                                    <li><a href="blog-details-gallery.html">gallery post</a></li>
                                                    <li><a href="blog-details-link.html">link post</a></li>
                                                    <li><a href="blog-details-quote.html">quote post</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="contact.html">contact</a></li>
                                </ul>
                            </nav>
                        </div>
                        <?php if (isset($_SESSION['user'])) { ?>
                            <div class="header-currency">
                                <span class="digit"><?= ucwords($_SESSION['user']->first_name . ' ' . $_SESSION['user']->last_name) ?> <i class="ti-angle-down"></i></span>
                                <div class="dollar-submenu">
                                    <ul>
                                        <li><a href="profile.php">Profile</a></li>
                                        <li><a href="logout.php">Logout</a></li>
                                    </ul>
                                </div>
                            </div>
                        <?php } else { ?>
                            <div class="header-currency">
                                <span class="digit">Welcome <i class="ti-angle-down"></i></span>
                                <div class="dollar-submenu">
                                    <ul>
                                        <li><a href="login.php">Login</a></li>
                                        <li><a href="register.php">Register</a></li>
                                    </ul>
                                </div>
                            </div>
                        <?php }  ?>
                        <div class="header-cart">
                            <a href="#">
                                <div class="cart-icon">
                                    <i class="ti-shopping-cart"></i>
                                </div>
                            </a>
                            <div class="shopping-cart-content">
                                <ul>
                                    <li class="single-shopping-cart">
                                        <div class="shopping-cart-img">
                                            <a href="#"><img alt="" src="assets/img/cart/cart-1.jpg"></a>
                                        </div>
                                        <div class="shopping-cart-title">
                                            <h4><a href="#">Phantom Remote </a></h4>
                                            <h6>Qty: 02</h6>
                                            <span>$260.00</span>
                                        </div>
                                        <div class="shopping-cart-delete">
                                            <a href="#"><i class="ion ion-close"></i></a>
                                        </div>
                                    </li>
                                    <li class="single-shopping-cart">
                                        <div class="shopping-cart-img">
                                            <a href="#"><img alt="" src="assets/img/cart/cart-2.jpg"></a>
                                        </div>
                                        <div class="shopping-cart-title">
                                            <h4><a href="#">Phantom Remote</a></h4>
                                            <h6>Qty: 02</h6>
                                            <span>$260.00</span>
                                        </div>
                                        <div class="shopping-cart-delete">
                                            <a href="#"><i class="ion ion-close"></i></a>
                                        </div>
                                    </li>
                                </ul>
                                <div class="shopping-cart-total">
                                    <h4>Shipping : <span>$20.00</span></h4>
                                    <h4>Total : <span class="shop-total">$260.00</span></h4>
                                </div>
                                <div class="shopping-cart-btn">
                                    <a href="cart-page.html">view cart</a>
                                    <a href="checkout.html">checkout</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="mobile-menu-area">
                <div class="mobile-menu">
                    <nav id="mobile-menu-active">
                        <ul class="menu-overflow">
                            <li><a href="<?= $root ?>">HOME</a>
                            </li>
                            <li><a href="shop.php"> Shop </a>
                                <ul class="mega-menu">
                                    <?php foreach ($categories as $category) { ?>
                                        <li>
                                            <ul>
                                                <li class="mega-menu-title">
                                                    <a class="font-weight-bold" href="shop.php?category=<?= $category['id'] ?>"><?= $category['name_en'] ?></a>
                                                </li>
                                                <?php
                                                $subcategoryObject->setCategory_id($category['id']);
                                                $subcategories = $subcategoryObject->getSubsByCat()->fetch_all(MYSQLI_ASSOC);
                                                foreach ($subcategories as $subcategory) { ?>
                                                    <li><a href="shop.php?subcategory=<?= $subcategory['id'] ?>"><?= $subcategory['name_en'] ?></a></li>
                                                <?php } ?>
                                            </ul>
                                        </li>
                                    <?php } ?>
                                </ul>
                            </li>
                            <li><a href="#">BLOG</a>
                                <ul>
                                    <li><a href="blog-masonry.html">Blog Masonry</a></li>
                                    <li><a href="#">Blog Standard</a>
                                        <ul>
                                            <li><a href="blog-left-sidebar.html">left sidebar</a></li>
                                            <li><a href="blog-right-sidebar.html">right sidebar</a></li>
                                            <li><a href="blog-no-sidebar.html">no sidebar</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Post Types</a>
                                        <ul>
                                            <li><a href="blog-details-standerd.html">Standard post</a></li>
                                            <li><a href="blog-details-audio.html">audio post</a></li>
                                            <li><a href="blog-details-video.html">video post</a></li>
                                            <li><a href="blog-details-gallery.html">gallery post</a></li>
                                            <li><a href="blog-details-link.html">link post</a></li>
                                            <li><a href="blog-details-quote.html">quote post</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="contact.html"> Contact us </a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</header>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* Basic Reset */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: "Libre Baskerville", serif;
  font-weight: 400;
  font-size: 16px;
  line-height: 30px;
  background-color: #0c0f15;
  overflow-x: hidden;
  color: #ababab;
}

.site-wrapper {
  width: 100%;
  height: 100%;
  position: relative;
}

.page-home {
  background-image: url("https://images.unsplash.com/photo-1486870591958-9b9d0d1dda99?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80");
  background-position: center;
  background-size: cover;
  height: 100vh;
  position: relative;
}

.overlay {
  background-color: rgba(14, 17, 24, 0.7);
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
}

.container {
  position: relative;
  z-index: 1;
  padding-top: 50px;
}

.row {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
}

.page-title {
  text-align: center;
  color: white;
  margin-bottom: 30px;
}

.heading-page {
  text-transform: uppercase;
  font-size: 43px;
  font-weight: bolder;
  letter-spacing: 3px;
  color: white;
}

.mt20 {
  margin-top: 20px;
  font-size: 18px;
  line-height: 1.5;
  color: #f1f1f1;
}

.hexagon-item {
  margin: 20px;
  width: 120px;
  height: 138.56px;
  background-color: #f90a23;
  clip-path: polygon(50% 0%, 100% 25%, 100% 75%, 50% 100%, 0% 75%, 0% 25%);
  display: flex;
  justify-content: center;
  align-items: center;
  color: white;
  text-align: center;
  font-size: 16px;
  font-weight: bold;
  transition: background-color 0.3s ease;
  display:center;
}

.hexagon-item:hover {
  background-color: #ff6347;
}
.hexagon-item:first-child {
    margin-left: 0;
}

.page-home {
  background-position: center center;
  background-repeat: no-repeat;
  background-size: cover;
  vertical-align: middle; }
  .page-home .overlay {
    background-color: rgba(14, 17, 24, 0.97);
    background-image:url("https://images.unsplash.com/photo-1682686581220-689c34afb6ef?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D");
}

/* End of container */
.hexagon-item {
  cursor: pointer;
  display: flex;
  width: 200px;
  height: 173.20508px;
  float: left;
  margin-left: 129px;
  z-index: 0;
  -webkit-transform: rotate(30deg);
  -moz-transform: rotate(30deg);
  -ms-transform: rotate(30deg);
  -o-transform: rotate(30deg);
  transform: rotate(30deg); }
  .hexagon-item:first-child {
    margin-left: 0; }
  .hexagon-item:hover {
    z-index: 1; }
    .hexagon-item:hover .hex-item:last-child {
      opacity: 1;
      -webkit-transform: scale(1.3);
      -moz-transform: scale(1.3);
      -ms-transform: scale(1.3);
      -o-transform: scale(1.3);
      transform: scale(1.3); }
    .hexagon-item:hover .hex-item:first-child {
      opacity: 1;
      -webkit-transform: scale(1.2);
      -moz-transform: scale(1.2);
      -ms-transform: scale(1.2);
      -o-transform: scale(1.2);
      transform: scale(1.2); }
      .hexagon-item:hover .hex-item:first-child div:before,
      .hexagon-item:hover .hex-item:first-child div:after {
        height: 5px; }
    .hexagon-item:hover .hex-item div::before,
    .hexagon-item:hover .hex-item div::after {
      background-color: #ff0037; }
    .hexagon-item:hover .hex-content svg {
      -webkit-transform: scale(0.97);
      -moz-transform: scale(0.97);
      -ms-transform: scale(0.97);
      -o-transform: scale(0.97);
      transform: scale(0.97); }

.page-home .hexagon-item:nth-last-child(1),
.page-home .hexagon-item:nth-last-child(2),
.page-home .hexagon-item:nth-last-child(3) {
  -webkit-transform: rotate(30deg) translate(87px, -80px);
  -moz-transform: rotate(30deg) translate(87px, -80px);
  -ms-transform: rotate(30deg) translate(87px, -80px);
  -o-transform: rotate(30deg) translate(87px, -80px);
  transform: rotate(30deg) translate(87px, -80px); }

.hex-item {
  position: absolute;
  top: 0;
  left: 50px;
  width: 100px;
  height: 173.20508px; }
  .hex-item:first-child {
    z-index: 0;
    -webkit-transform: scale(0.9);
    -moz-transform: scale(0.9);
    -ms-transform: scale(0.9);
    -o-transform: scale(0.9);
    transform: scale(0.9);
    -webkit-transition: all 0.3s cubic-bezier(0.165, 0.84, 0.44, 1);
    -moz-transition: all 0.3s cubic-bezier(0.165, 0.84, 0.44, 1);
    -o-transition: all 0.3s cubic-bezier(0.165, 0.84, 0.44, 1);
    transition: all 0.3s cubic-bezier(0.165, 0.84, 0.44, 1); }
  .hex-item:last-child {
    transition: all 0.3s cubic-bezier(0.19, 1, 0.22, 1);
    z-index: 1; }
  .hex-item div {
    box-sizing: border-box;
    position: absolute;
    top: 0;
    width: 100px;
    height: 173.20508px;
    -webkit-transform-origin: center center;
    -moz-transform-origin: center center;
    -ms-transform-origin: center center;
    -o-transform-origin: center center;
    transform-origin: center center; }
    .hex-item div::before, .hex-item div::after {
      background-color: #1e2530;
      content: "";
      position: absolute;
      width: 100%;
      height: 3px;
      -webkit-transition: all 0.3s cubic-bezier(0.165, 0.84, 0.44, 1) 0s;
      -moz-transition: all 0.3s cubic-bezier(0.165, 0.84, 0.44, 1) 0s;
      -o-transition: all 0.3s cubic-bezier(0.165, 0.84, 0.44, 1) 0s;
      transition: all 0.3s cubic-bezier(0.165, 0.84, 0.44, 1) 0s; }
    .hex-item div:before {
      top: 0; }
    .hex-item div:after {
      bottom: 0; }
    .hex-item div:nth-child(1) {
      -webkit-transform: rotate(0deg);
      -moz-transform: rotate(0deg);
      -ms-transform: rotate(0deg);
      -o-transform: rotate(0deg);
      transform: rotate(0deg); }
    .hex-item div:nth-child(2) {
      -webkit-transform: rotate(60deg);
      -moz-transform: rotate(60deg);
      -ms-transform: rotate(60deg);
      -o-transform: rotate(60deg);
      transform: rotate(60deg); }
    .hex-item div:nth-child(3) {
      -webkit-transform: rotate(120deg);
      -moz-transform: rotate(120deg);
      -ms-transform: rotate(120deg);
      -o-transform: rotate(120deg);
      transform: rotate(120deg); }

.hex-content {
  color: #fff;
  display: block;
  height: 180px;
  margin: 0 auto;
  position: relative;
  text-align: center;
  transform: rotate(-30deg);
  width: 156px; }
  .hex-content .hex-content-inner {
    left: 50%;
    margin: -3px 0 0 2px;
    position: absolute;
    top: 50%;
    -webkit-transform: translate(-50%, -50%);
    -moz-transform: translate(-50%, -50%);
    -ms-transform: translate(-50%, -50%);
    -o-transform: translate(-50%, -50%);
    transform: translate(-50%, -50%); }
  .hex-content .icon {
    display: block;
    font-size: 36px;
    line-height: 30px;
    margin-bottom: 11px; }
  .hex-content .title {
    display: block;
    font-family: "Open Sans", sans-serif;
    font-size: 14px;
    letter-spacing: 1px;
    line-height: 24px;
    text-transform: uppercase; }
  .hex-content svg {
    left: -7px;
    position: absolute;
    top: -13px;
    transform: scale(0.87);
    z-index: -1;
    -webkit-transition: all 0.3s cubic-bezier(0.165, 0.84, 0.44, 1) 0s;
    -moz-transition: all 0.3s cubic-bezier(0.165, 0.84, 0.44, 1) 0s;
    -o-transition: all 0.3s cubic-bezier(0.165, 0.84, 0.44, 1) 0s;
    transition: all 0.3s cubic-bezier(0.165, 0.84, 0.44, 1) 0s; }
  .hex-content:hover {
    color: #fff; }


.title {
  margin-bottom: 10px;
}

svg {
  width: 40px;
  height: 40px;
  fill: #fff;
  transition: fill 0.3s ease;
}

.hexagon-item:hover svg {
  fill: #f90a23;
}

/* Responsive Design */
@media screen and (max-width: 768px) {
  .container {
    padding-top: 30px;
  }

  .heading-page {
    font-size: 36px;
  }

  .mt20 {
    font-size: 16px;
  }

  .hexagon-item {
    width: 100px;
    height: 115px;
  }

  .hex-content span {
    font-size: 14px;
  }

  svg {
    width: 30px;
    height: 30px;
  }
}


</style>
</head>
<body>
	<main class="site-wrapper">
		<div class="pt-table desktop-768">
			<div class="pt-tablecell page-home relative"
				style="background-image: url(https://images.unsplash.com/photo-1486870591958-9b9d0d1dda99?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=1500&amp;q=80); background-position: center; background-size: cover;">
				<div class="overlay"></div>

				<div class="container">
					<div class="row">
						<div
							class="col-xs-12 col-md-offset-1 col-md-10 col-lg-offset-2 col-lg-8">
							<div class="page-title home text-center">
								<span class="heading-page">Welcome to Product Management System</span>
								<p class="mt20">"Our intuitive portal allows you to
									effortlessly manage product inventory, monitor sales in real
									time, and access performance data that helps you make informed
									decisions. Experience smooth and efficient operations, all
									while optimizing your business for long-term success."</p>
							</div>
								<div class="hexagon-item">
									<div class="hex-item">
										<div></div>
										<div></div>
										<div></div>
									</div>
									<div class="hex-item">
										<div></div>
										<div></div>
										<div></div>
									</div>
									<a class="hex-content"> <span class="hex-content-inner">
											<span class="/">Home</span>
									</span> <svg viewBox="0 0 173.20508075688772 200" height="200"
											width="174" version="1.1" xmlns="http://www.w3.org/2000/svg">
                                            <path
												d="M86.60254037844386 0L173.20508075688772 50L173.20508075688772 150L86.60254037844386 200L0 150L0 50Z"
												fill="#1e2530"></path>
                                        </svg>
									</a>
								</div>

								<div class="hexagon-item">
									<div class="hex-item">
										<div></div>
										<div></div>
										<div></div>
									</div>
									<div class="hex-item">
										<div></div>
										<div></div>
										<div></div>
									</div>
									<a class="hex-content" href="add-page"> <span class="hex-content-inner">
											<span class="/add-products">Add-Product</span>
									</span> <svg viewBox="0 0 173.20508075688772 200" height="200"
											width="174" version="1.1" xmlns="http://www.w3.org/2000/svg">
                                            <path
												d="M86.60254037844386 0L173.20508075688772 50L173.20508075688772 150L86.60254037844386 200L0 150L0 50Z"
												fill="#1e2530"></path>
                                        </svg>
									</a>
								</div>

								<div class="hexagon-item">
									<div class="hex-item">
										<div></div>
										<div></div>
										<div></div>
									</div>
									<div class="hex-item">
										<div></div>
										<div></div>
										<div></div>
									</div>
									<a class="hex-content" href="display-product">
									<span class="hex-content-inner">
									 <span class="title">Display-Product</span>
										</span> <svg viewBox="0 0 173.20508075688772 200" height="200"
											width="174" version="1.1" xmlns="http://www.w3.org/2000/svg">
                                            <path
												d="M86.60254037844386 0L173.20508075688772 50L173.20508075688772 150L86.60254037844386 200L0 150L0 50Z"
												fill="#1e2530"></path>
                                        </svg>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
</body>

</html>
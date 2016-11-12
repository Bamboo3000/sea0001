<?php 
/*
* Template Name: Contact

 ()()		That's an indentation bunny.
 ('.')		He's here to protect this file for propper indentation.
 (()()		Please don't mess with a bunny...
*(_()()		He can be really CrAzY!#$%&@%$

*/
?>

<div class="section-header page-header">
	<p class="section-header__title notes">Contact us</p>
	<h2 class="section-header__desc">Let's work together</h2>
</div>
<!-- <div data-message="contact" class="contact-message content-container">
	<div class="contact-message__content">
		<p class="contact-message__text">Thank you for your enquiry. A member of our team will come back to you shortly.</p>
		<div class="close-button">
			<span data-message="close" class="close-button__text">Close <i class="fa fa-times" aria-hidden="true"></i></span>
		</div>
	</div>
</div> -->
<section class="contact-section content-container">
	<aside class="contact-details">
		<div class="contact-detail">
			<h3 class="contact-details__title notes">Tel</h3>
			<p class="contact-details__text">
				<a href="<?= $this->option->contact_phone; ?>"><?= $this->option->contact_phone; ?></a>
			</p>
		</div>
		<div class="contact-detail">
			<h3 class="contact-details__title notes">Email</h3>
			<p class="contact-details__text contact-details__subtitle"><?= $this->contact_first_email_text; ?></p>
			<a href="mailto:<?= $this->contact_first_email_address; ?>" class="contact-details__link"><?= $this->contact_first_email_address; ?></a>
			<p class="contact-details__text contact-details__subtitle"><?= $this->contact_second_email_text; ?></p>
			<a href="mailto:<?= $this->contact_second_email_address; ?>" class="contact-details__link"><?= $this->contact_second_email_address; ?></a>
		</div>
		<div class="contact-detail">
			<h3 class="contact-details__title notes">Get connected</h3>
			<?php for ($i = 1; $i <= 1; $i++) : ?>
				<?php 
					$name = 'contact_social_name_'.$i;
					$link = 'contact_social_link_'.$i;
				 ?>
				<div class="<?=$this->$name?> <?=$this->$name?>-contact">
					<a href="<?=$this->$link;?>" target="_blank"><i class="fa fa-<?=$this->$name?>" aria-hidden="true"></i></a>
				</div>
			<?php endfor; ?>
		</div>
	</aside>
	<div class="contact-form__cont">
		<form action="" class="contact-form">
			<div class="label-input__wrapper label-input__wrapper--name">
				<label class="input-label" for="contact-name">Name</label>
				<input class="input-field" id="contact-name" type="text" name="name">
				<!-- <span class="label-input__error">Ooops! you need to add a name!</span> -->
			</div>
			<div class="label-input__wrapper">
				<label class="input-label" for="contact-email">Email</label>
				<input class="input-field input-field--error" id="contact-email" type="text" name="email">
				<span class="label-input__error">Add an email</span>
			</div>
			<div class="label-input__wrapper">
				<label class="input-label" for="contact-tel">Telephone</label>
				<input class="input-field input-field--error" id="contact-tel" type="text" name="tel">
				<span class="label-input__error">Add a telephone number</span>
			</div>
			<div class="label-input__wrapper">
				<label class="input-label" for="contact-enquiry">Your enquiry</label>
				<textarea class="contact-textarea input-field--error" id="contact-enquiry" name="enquiry"></textarea>
				<span class="label-input__error">Add a message</span>
			</div>
			<div class="contact-submit__cont">
				<input class="contact-submit pill chev-cta" type="submit" name="submit" value="Send enquiry">
			</div>
		</form>
	</div>
</section>
<section class="contact-location">
<div class="location-detail__container toi-body visual-container">
	<div id="map" class="contact-map">
	</div>
	<div class="location-detail__inner-container toi__inner-container toi__inner--left toi__inner--centered content-container">
		<div class="location-details toi__content">
			<p class="notes">Address</p>
			<p class="footer-addr__address">
				<?= $this->option->contact_address; ?>
			</p>
			<a href="<?= $this->option->contact_map_url; ?>" target="_blank" class="chev-cta pill main-cta">Open in maps  <i class="fa fa-chevron-right" aria-hidden="true"></i></a>
		</div>
	</div>
</div>
</section>
<?php 
	$map_link = $this->option->contact_map_url;
	$link_end = explode('!3d', $map_link)[1];
	$lat = explode('!4d', $link_end)[0];
	$lng = explode('!4d', $link_end)[1];
 ?>
<script defer type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAsCbAp_WgU6jyqRooIWD71taKRrQ8rysM&callback=initMap"></script>
<script defer type="text/javascript">
    function initMap() {
        var myLocation = {lat: <?=$lat?>, lng: <?=$lng?>}
        var mapOptions = {
            zoom: <?=$this->contact_map_zoom;?>,
            scrollwheel: false,
            center: myLocation,
            styles: [{"featureType":"all","elementType":"labels.text.fill","stylers":[{"color":"#736c68"}]},{"featureType":"landscape.man_made","elementType":"geometry.fill","stylers":[{"color":"#e7e6e5"}]},{"featureType":"landscape.natural","elementType":"all","stylers":[{"visibility":"on"},{"color":"#d4e4d3"}]},{"featureType":"poi","elementType":"geometry.fill","stylers":[{"visibility":"on"},{"color":"#f5f5f5"}]},{"featureType":"poi.park","elementType":"geometry.fill","stylers":[{"color":"#d4e4d3"}]},{"featureType":"road","elementType":"geometry.fill","stylers":[{"color":"#f5f5f5"}]},{"featureType":"road","elementType":"geometry.stroke","stylers":[{"color":"#e7e6e5"},{"gamma":"0.65"},{"lightness":"0"}]},{"featureType":"transit","elementType":"labels.text","stylers":[{"visibility":"off"}]},{"featureType":"water","elementType":"all","stylers":[{"color":"#aad5df"}]}]
        };
        var mapElement = document.getElementById('map');
        var map = new google.maps.Map(mapElement, mapOptions);
        var marker = new google.maps.Marker({
            position: myLocation,
            map: map,
            title: 'Opalbond',
            icon: '/assets/img/opalbond-map-pin.png'
        });
    }
</script>

<?php 

/*

<?=
		$this->helper('arrays')->recurse([
			['class' => 'col-xs-12', 'form' => $this->form->getElement('title')],
			['class' => 'col-sm-6 col-xs-12', 'form' => $this->form->getElement('first_name')],
			['class' => 'col-sm-6 col-xs-12', 'form' => $this->form->getElement('last_name')],
			['class' => 'col-xs-12', 'form' => $this->form->getElement('address')],
			['class' => 'col-xs-12', 'form' => $this->form->getElement('postcode')],
			['class' => 'col-sm-6 col-xs-12', 'form' => $this->form->getElement('telephone')],
			['class' => 'col-sm-6 col-xs-12', 'form' => $this->form->getElement('mobile')],
		], $this->decorator);
	?>

*/

 ?>
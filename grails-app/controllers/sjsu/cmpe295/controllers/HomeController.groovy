package sjsu.cmpe295.controllers

import sjsu.cmpe295.models.Property

class HomeController {
	def dataQueryService
	
	def index() {
		println("In class HomeController/index()")
		//redirect(action : 'home')
		render(view: "index")	
	}

	
	def listings()
	{
		println("In class DataQueryController/listings()")
		def address = params.query
		Property property = dataQueryService.findAddress(address)
		flash.address = address
		flash.city = property.getCity()
		flash.zestAmt = property.getZest_amt()
		flash.address = property.getAddress()
		flash.bathroom = property.getBathroom()
		flash.bedroom = property.getBedroom()
		flash.fArea = property.getFinishedSqFt()
		flash.lArea = property.getLotSizeSqFt()
		flash.lat = property.getLatitude()
		flash.lon = property.getLongitude()
		flash.zip = property.getZipcode()
		
		render(view: "listings")
	}
}


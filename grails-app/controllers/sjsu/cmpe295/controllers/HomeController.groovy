package sjsu.cmpe295.controllers

import sjsu.cmpe295.models.MasterUnSoldProperty
import sjsu.cmpe295.models.Property
import sjsu.cmpe295.models.User

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
		printf(address)
		MasterUnSoldProperty property = dataQueryService.findAddress(address)
		//AddToUserWatchList(property)
		
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
	
	/*
	def getUserWatchlist()
	{	
		def user = User.findByEmail(session.email)
		for (prop in user.props)
		{ 	println (prop.Address.toString())
			println (prop.city.toString())
			println (prop.state.toString())
		}
		 
	}
	*/
	def AddToUserWatchList()
	{
		println("In class DataQueryController/AddToUserWatchList()")
		def address = params.address
		printf(address)
		Property property = dataQueryService.findAddress(address)
		
		User user = User.findByEmail(session.email) // find user by email from session
		
		
		// set association
		Set properties = new HashSet()
		properties.add(property)
		user.props =  properties
		
		// save objects
		user.save(flush:true)
		printf(user.getErrors().toString())
		
		for (prop in user.props)
		{ 	println (prop.Address.toString())
			println (prop.city.toString())
			println (prop.state.toString())
		}
		
		render(view: "index")
	}
	
	
	
}


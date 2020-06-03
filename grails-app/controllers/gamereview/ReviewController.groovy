package gamereview

import grails.converters.*
import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMIN'])
class ReviewController {
	
    def index() { }

	def list() {
		def reviews = gamereview.Review.list()
		
		if(params["format"] == "json") {
			render reviews as JSON
		}
		
		[reviewsList: reviews]
	}
	
	def add() {
		[reviewInstance: new Review(params)]
	}
	
	def save() {
		def reviewInstance = new Review(params)
		reviewInstance.reviewDate = new Date()
		reviewInstance.game = Game.first()
		if(!reviewInstance.save()) {
			render(view: "add", model: [reviewInstance: reviewInstance])
			return
		}
		
		redirect(action: "list")
	}
}

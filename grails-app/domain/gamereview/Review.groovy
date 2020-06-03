package gamereview

class Review {

	String reviewText
	Date reviewDate
	
	static belongsTo = [game:Game]
	
    static constraints = {
    }
}

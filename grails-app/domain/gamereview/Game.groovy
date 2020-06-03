package gamereview

import com.bloomhealthco.jasypt.GormEncryptedStringType

class Game {
	String name
	static mapping = {
		name type: GormEncryptedStringType
	}
	String description
	Double price
	
	static hasMany = [reviews:Review]

    static constraints = {
    }
}

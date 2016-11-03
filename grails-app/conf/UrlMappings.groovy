class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"landing/index")
//        "/"(view:"landing/index")
        "500"(view:'/error')
	}
}

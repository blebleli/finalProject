package cvs;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/map")
@Controller("mapController")
public class mapController {
	
	@RequestMapping("/mapTest")
	public String listTest(Model model) {
		return "mapTest/map";
	}
}

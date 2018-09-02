package cvs;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

	
@RequestMapping("/map")
@Controller("mapController")
public class mapController {
	
	@RequestMapping("/mapTest")
	 public String boardView() {
		
		 return "map/maptest";
	 }
	
	
	@RequestMapping("/mapConvert")
	 public String mapConvert() {
		
		 return "map/convert";
	 }
}

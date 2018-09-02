package cvs;

import java.util.Base64;
import java.util.Base64.Decoder;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@RequestMapping("/barcode")
@Controller("barcodeController")
public class BarcodeController {

	@RequestMapping("/camera")
	 public String boardView() {		
		 return "camera/camera";
	 }
	
	@RequestMapping("/bcdRead")
	 public String boardRead(@RequestParam("file") String file,
			 				  Model model) {
		
		String[] stringPart = file.split(",");	
		Decoder decoder = Base64.getDecoder();
		byte[] fileByte = decoder.decode(stringPart[1]);
		
		model.addAttribute("fileByte",fileByte);
		
		 return "qrCodeReader";
	 }
	
}

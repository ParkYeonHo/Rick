package rick;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class InstrumentSpec {
	private Map properties;
	
	public InstrumentSpec(Map properties){
		if(properties == null){
			this.properties = new HashMap();
		} else {
			this.properties = new HashMap(properties);
		}
		this.properties = properties;
	}
	
	public Object getProperty(String key){
		return properties.get(key);
	}
	
	public Map getProperties(){
		return properties;
	}
}

package org.collectionspace.qa.utils;

import java.util.HashMap;

public class ElementMappings {
	private HashMap<String, String> mappings = new HashMap<>();

	public ElementMappings() {
		mappings.put("Title", "csc-group-title");
        mappings.put("Group Owner", "cs-autocomplete-input");

	}

	public String getElement(String key) {
		return mappings.get(key);
	}
		


}


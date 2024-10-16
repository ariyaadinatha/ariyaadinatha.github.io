<%*
	function slugify(str) {
		// Trim whitespace, convert to lowercase, and replace special characters
	    str = str.replace(/^\s+|\s+$/g, '').toLowerCase();
	    str = str.replace(/[^a-z0-9 -]/g, '').replace(/\s+/g, '-').replace(/-+/g, '-');
	    return str;
	}

	let currentTitle = tp.file.title;

	// If the title starts with "Untitled", prompt for a new title
	if (currentTitle.startsWith("Untitled")) {
	    currentTitle = await tp.system.prompt("Enter a title for the post:");
	    if (!currentTitle) {
			currentTitle = "Untitled";  // Default back if no title is provided
	    }
	}

	// Rename the file
    const newFileName = `${tp.file.creation_date("YYYY-MM-DD")}-${slugify(currentTitle)}`;
    await tp.file.rename(newFileName);
%>---
title: <% currentTitle %>
date: <% tp.file.creation_date() %>
categories:
  - Blogging
  - Tutorial
tags:
  - writing
render_with_liquid: false
---
## Lorem Ipsum
Lorem ipsum dolor sit amet.
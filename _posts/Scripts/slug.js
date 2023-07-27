function title_slug (title) {
    let slug = title.toLowerCase();
    // Replace spaces with dashes
    slug = slug.replace(/\s+/g, "-");
    
    return slug;
}
module.exports = title_slug;
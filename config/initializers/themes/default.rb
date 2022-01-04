# Theme configuration file
# ========================
# This file is used for all theme configuration.
# It's where you define everything that's editable in Spina CMS.

Spina::Theme.register do |theme|
  # All views are namespaced based on the theme's name
  theme.name = "default"
  theme.title = "Default theme"

  # Parts
  # Define all editable parts you want to use in your view templates
  #
  # Built-in part types:
  # - Line
  # - MultiLine
  # - Text (Rich text editor)
  # - Image
  # - ImageCollection
  # - Attachment
  # - Option
  # - Repeater
  theme.parts = [{
    name: "Title",
    title: "title",
    part_type: "Spina::Parts::Line",
  }, {
    name: "Subtitle",
    title: "subtitle",
    part_type: "Spina::Parts::Text",
  },{
    name: "SpacesTitle",
    title: "Spaces title",
    part_type: "Spina::Parts::Line",
  }, {
    name: "SpacesSubtitle",
    title: "Spaces subtitle",
    part_type: "Spina::Parts::Text",
  }, {
    name: "AccommodationTitle",
    title: "Accommodation title",
    part_type: "Spina::Parts::Line",
  }, {
    name: "AccommodationSubtitle",
    title: "Accommodation subtitle",
    part_type: "Spina::Parts::Text",
  }, {
    name: "CommonServicesTitle",
    title: "CommonServices title",
    part_type: "Spina::Parts::Line",
  }, {
    name: "CommonServicesSubtitle",
    title: "CommonServices subtitle",
    part_type: "Spina::Parts::Text",
  }, {
    name: "StudiosTitle",
    title: "Studios title",
    part_type: "Spina::Parts::Line",
  }, {
    name: "StudiosDescription",
    title: "Studios description",
    part_type: "Spina::Parts::Text",
  }, {
    name: "IncludedTitle",
    title: "Included title",
    part_type: "Spina::Parts::Line",
  }, {
    name: "IncludedSubtitle",
    title: "Included subtitlte",
    part_type: "Spina::Parts::Text",
  },{
    name: "TextArea",
    title: "text",
    part_type: "Spina::Parts::Text",
  }, {
    name: "Description",
    title: "Description",
    part_type: "Spina::Parts::Text",
  }, {
    name: "Size",
    title: "Size",
    part_type: "Spina::Parts::Text",
  }, {
    name: "Image",
    title: "Image",
    part_type: "Spina::Parts::Image",
  }, {
    name: "PageSection",
    title: "Page section",
    parts: %w(Title Subtitle Description Image),
	part_type: "Spina::Parts::Text",

  }, {
    name: "SingleCard",
    title: "Card",
    parts: %w(Title Description Size Image),
    part_type: "Spina::Parts::Repeater",
  }, {
    name: "SingleCard_2",
    title: "Card",
    parts: %w(Title Description Size Image),
    part_type: "Spina::Parts::Repeater",
  }, {
    name: "SectionHead",
    title: "Section Header",
    parts: %w(Title Subtitle),
  }, {
    name: "Accommodation",
    title: "Accommodation",
    parts: %w(Title Description Image),
    part_type: "Spina::Parts::Repeater",
  },  {
    name: "CommonServices",
    title: "Common Services",
    parts: %w(Title Description Image),
    part_type: "Spina::Parts::Repeater",
  }, {
    name: "footer",
    title: "Footer",
    part_type: "Spina::Parts::Text",
  }]
  # View templates
  # Every page has a view template stored in app/views/my_theme/pages/*
  # You define which parts you want to enable for every view template
  # by referencing them from the theme.parts configuration above.
  theme.view_templates = [{
    name: "homepage",
    title: "Homepage",
    parts: %w(TextArea PageSection),
  }, {
    name: "show",
    title: "Retreats",
    description: "Retreats page",
    usage: "Use for your content",
    parts: %w(
		Title 
		Subtitle 
		Description 
		Image 
		SpacesTitle 
		SpacesSubtitle 
		SingleCard 
		AccommodationTitle 
		AccommodationSubtitle
		Accommodation 
		CommonServicesTitle
		CommonServicesSubtitle
		CommonServices
	),
  }, {
    name: "studios",
    title: "Studios",
    description: "Studios page",
    usage: "Use for your content",
    parts: %w(
		Title 
		Description  
		Image
		StudiosTitle
		StudiosDescription
		SingleCard
		IncludedTitle
		IncludedSubtitle
		SingleCard_2

	),
  }, {
    name: "makerspace",
    title: "Makerspace",
    description: "Makerspace page",
    usage: "Use for your content",
    parts: %w(MakerspaceIntro),

  }]

  # Custom pages
  # Some pages should not be created by the user, but generated automatically.
  # By naming them you can reference them in your code.
  theme.custom_pages = [
    { name: "homepage", title: "Homepage", deletable: false, view_template: "homepage" },
  ]

  # Navigations (optional)
  # If your project has multiple navigations, it can be useful to configure multiple
  # navigations.
  theme.navigations = [
    { name: "main", label: "Main navigation" },
  ]

  # Layout parts (optional)
  # You can create global content that doesn't belong to one specific page. We call these layout parts.
  # You only have to reference the name of the parts you want to have here.
  theme.layout_parts = ["footer"]

  # Resources (optional)
  # Think of resources as a collection of pages. They are managed separately in Spina
  # allowing you to separate these pages from the 'main' collection of pages.
  theme.resources = []

  # Plugins (optional)
  theme.plugins = []

  # Embeds (optional)
  theme.embeds = []
end

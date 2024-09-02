local menu = {
    categoryName = "Mouse Wheel Jump",
    entryConfig = {
        name = "mwjEntry",
        class = GUIMenuCategoryDisplayBoxEntry,
        params = {
            label = "Mouse Wheel Jump",
        }
    },
    contentsConfig = ModsMenuUtils.CreateBasicModsMenuContents {
        layoutName = "GeneralOptions",
        contents = {
            {
                name = "mwjEnabled",
                class = OP_TT_Checkbox,
                params = {
                    optionPath = "mwjEnabled",
                    optionType = "bool",
                    default = false,
                    tooltip = "Enable wheel jumping",
                },
                properties = {
                    { "Label", "Enable wheel jumping" },
                }
            }
        }
    }
}
table.insert(gModsCategories, menu)
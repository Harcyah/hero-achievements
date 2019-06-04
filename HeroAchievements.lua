hooksecurefunc("AchievementButton_OnClick", function(self, button, down) 
	if (IsControlKeyDown()) then
		local id = self.id
		local link = 'https://fr.wowhead.com/achievement=' .. id
		local edit_box = ChatEdit_ChooseBoxForSend()
		ChatEdit_ActivateChat(edit_box)
		edit_box:Insert(link);
		edit_box:HighlightText();
	end
end)

-- Default to filter incomplete achievements
AchievementFrame_SetFilter(ACHIEVEMENT_FILTER_INCOMPLETE)

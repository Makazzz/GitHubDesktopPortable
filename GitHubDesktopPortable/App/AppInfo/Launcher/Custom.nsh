${SegmentFile}

${SegmentPre}
	${If} ${FileExists} "$PROFILE\.gitconfig"
		Rename "$PROFILE\.gitconfig" "$PROFILE\.gitconfig-BackupByGitHubDesktopPortable"
	${EndIf}
	${If} ${FileExists} "$EXEDIR\App\GitHubDesktop\Update.exe"
		Rename "$EXEDIR\App\GitHubDesktop\Update.exe" "$EXEDIR\App\GitHubDesktop\Update.exe-Disabled"
	${EndIf}
!macroend
${SegmentPost}
	${If} ${FileExists} "$EXEDIR\App\GitHubDesktop\Update.exe-Disabled"
		Rename "$EXEDIR\App\GitHubDesktop\Update.exe-Disabled" "$EXEDIR\App\GitHubDesktop\Update.exe"
	${EndIf}
	${If} ${FileExists} "$PROFILE\.gitconfig-BackupByGitHubDesktopPortable"
		Rename "$PROFILE\.gitconfig-BackupByGitHubDesktopPortable" "$PROFILE\.gitconfig"
	${EndIf}
!macroend

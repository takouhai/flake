{...}: {
  home.username = "taco";
  home.homeDirectory = "/home/taco";
  home.sessionPath = [
    "/home/taco/Utilities/PlaydateSDK-2.7.1/bin"
  ];
  programs.zsh.localVariables = {
    PLAYDATE_SDK_PATH = "/home/taco/Utilities/PlaydateSDK-2.7.1";
  };
}

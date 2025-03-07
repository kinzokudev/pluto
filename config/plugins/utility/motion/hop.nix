{
  config.vim = {
    utility.motion.hop = {
      enable = true;
      mappings.hop = null;
    };
    maps.normal = {
      "<enter>" = {
        action = ":HopWord<CR>";
        desc = "Hop for words";
        silent = true;
      };
    };
  };
}

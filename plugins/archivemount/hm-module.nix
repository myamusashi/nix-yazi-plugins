{
  options = {
    cfg,
    mkKeyOption,
    ...
  }: {lib, ...}: {
    keys = {
      mount = mkKeyOption {
        on = [
          "m"
          "a"
        ];
        run = "plugin archivemount --args=mount";
        desc = "Mount selected archive";
      };
      unmount = mkKeyOption {
        on = [
          "m"
          "u"
        ];
        run = "plugin archivemount --args=unmount";
        desc = "Unmount and save changes to original archive";
      };
    };
  };
  config = {
    cfg,
    setKeys,
    ...
  }: {
    config,
    lib,
    ...
  }:
    {} // (setKeys cfg.keys);
}

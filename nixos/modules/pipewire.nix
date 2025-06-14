{ ... }:
{
  services.pulseaudio = {
    enable = true;
    support32Bit = true;
  };

  nixpkgs.config.pulseaudio = true;

  security.rtkit.enable = true;
  services.pipewire = {
    enable = false;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };
}

//
//  HomeTheaterFacade.swift
//
//
//  Created by Bastián Véliz Vega on 18-08-20.
//

import Foundation

class HomeTheaterFacade {
    let amplifier: Amplifier
    let tuner: Tuner
    let dvdPlayer: DvdPlayer
    let cdPlayer: CdPlayer
    let projector: Projector
    let lights: TheaterLights
    let screen: Screen
    let popper: PopcornPopper

    init(amplifier: Amplifier,
         tuner: Tuner,
         dvdPlayer: DvdPlayer,
         cdPlayer: CdPlayer,
         projector: Projector,
         lights: TheaterLights,
         screen: Screen,
         popper: PopcornPopper)
    {
        self.amplifier = amplifier
        self.tuner = tuner
        self.dvdPlayer = dvdPlayer
        self.cdPlayer = cdPlayer
        self.projector = projector
        self.lights = lights
        self.screen = screen
        self.popper = popper
    }

    func watchMovie() {
        self.popper.on()
        self.popper.pop()
        self.lights.dim(10)
        self.screen.down()
        self.projector.on()
        self.projector.wideScreenMode()
        self.amplifier.on()
        self.amplifier.setDvd()
        self.amplifier.setSurroundAudio()
        self.amplifier.setVolume(5)
        self.dvdPlayer.on()
        self.dvdPlayer.play()
    }

    func endMovie() {
        self.popper.off()
        self.lights.on()
        self.screen.up()
        self.projector.off()
        self.amplifier.off()
        self.dvdPlayer.stop()
        self.dvdPlayer.eject()
        self.dvdPlayer.off()
    }
}

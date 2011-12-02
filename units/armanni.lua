unitDef = {
  unitname                      = [[armanni]],
  name                          = [[Annihilator]],
  description                   = [[Tachyon Accelerator - Requires 50 Power]],
  acceleration                  = 0,
  activateWhenBuilt             = true,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildAngle                    = 4096,
  buildCostEnergy               = 1500,
  buildCostMetal                = 1500,
  builder                       = false,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 6,
  buildingGroundDecalSizeY      = 6,
  buildingGroundDecalType       = [[armanni_aoplane.dds]],
  buildPic                      = [[ARMANNI.png]],
  buildTime                     = 1500,
  canAttack                     = true,
  canstop                       = [[1]],
  category                      = [[SINK]],
  collisionVolumeOffsets        = [[0 -2 0]],
  collisionVolumeScales         = [[60 72 60]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],
  corpse                        = [[DEAD]],

  customParams                  = {
    description_fr = [[Acc?lerateur Tachyon]],
    description_pl = [[Akcelerator Tachyonów]],
	description_de = [[Tachyonen Beschleuniger - Benötigt ein angeschlossenes Stromnetz von 50 Energie, um feuern zu können.]],
    helptext       = [[Inside the heavily armored shell of the Annihilator lies the devastating Tachyon Accelerator. This fearsome weapon is capable of delivering pinpoint damage at extreme ranges, provided you keep it connected to a power source. Remember that the Annihilator is strictly a support weapon; leave it unguarded and it will be swamped with raiders.]],
    helptext_fr    = [[Protégé derri?re le blindage lourd de l'Annihilator se trouve le terrible Canon Accélerateur de Tachyon. Cette arme terrifiante est capable d'envoyer des quantités colossales d'énergie sur un point précis, percant tous les blindages aisément, le tout ? une distance terrifiante. Son co?t et sa consommation d'énergie la rendent cependant difficile ? employer.]],
    helptext_pl    = [[Pod ci??kim pancerzem Annihilatora znajduje si? niszczycielski Akcelerator Tachyonów. Ta straszliwa bro? pozwala na zadawanie wysokich obra?e? oddalonym celom, zak?adaj?c ?e masz do?? energii by j? zasili?.]],
	helptext_de    = [[Innerhalb der hart gepanzerten Hülle befindet sich ein verheerender Tachyonen Beschleuniger. Diese furchteinregende Waffe ist imstande in einem riesigen Umkreis punktgenaue Zerstörung nach sich zu ziehen, vorausgesetzt du verbindest es mit einer Energiequelle. Beachte aber, dass der Anniilator eine dezidierte Unterstützungswaffe ist; unbewacht wird er schnell von Angreifern überrumpelt.]],
    keeptooltip    = [[any string I want]],
    neededlink     = 50,
    pylonrange     = 50,
  },

  damageModifier                = 0.25,
  defaultmissiontype            = [[GUARD_NOMOVE]],
  explodeAs                     = [[ESTOR_BUILDING]],
  footprintX                    = 4,
  footprintZ                    = 4,
  iconType                      = [[fixedtachyon]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  mass                          = 556,
  maxDamage                     = 7000,
  maxSlope                      = 18,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  noChaseCategory               = [[FIXEDWING LAND SHIP SATELLITE SWIM GUNSHIP SUB HOVER]],
  objectName                    = [[arm_annihilator.s3o]],
  onoffable                     = true,
  script                        = [[armanni.lua]],
  seismicSignature              = 4,
  explodeAs                     = [[ESTOR_BUILDING]],
  side                          = [[ARM]],
  sightDistance                 = 780,
  smoothAnim                    = true,
  turnRate                      = 0,
  useBuildingGroundDecal        = true,
  workerTime                    = 0,
  yardMap                       = [[oooooooooooooooo]],

  weapons                       = {

    {
      def                = [[ATA]],
      badTargetCategory  = [[FIXEDWING GUNSHIP]],
      onlyTargetCategory = [[SWIM LAND SHIP SINK FLOAT GUNSHIP FIXEDWING HOVER]],
    },

  },


  weaponDefs                    = {

    ATA = {
      name                    = [[Tachyon Accelerator]],
      areaOfEffect            = 20,
      avoidFeature            = false,
      avoidNeutral            = false,
      beamTime                = 1,
      coreThickness           = 0.5,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 4000,
        planes  = 4000,
        subs    = 200,
      },

      explosionGenerator      = [[custom:ataalaser]],
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      largeBeamLaser          = true,
      laserFlareSize          = 16.94,
      minIntensity            = 1,
      noSelfDamage            = true,
      range                   = 1250,
      reloadtime              = 8,
      rgbColor                = [[0.25 0 1]],
      soundStart              = [[weapon/laser/heavy_laser6]],
      targetMoveError         = 0.3,
      texture1                = [[largelaser]],
      texture2                = [[flare]],
      texture3                = [[flare]],
      texture4                = [[smallflare]],
      thickness               = 16.94,
      tolerance               = 10000,
      turret                  = true,
      weaponType              = [[BeamLaser]],
      weaponVelocity          = 1400,
    },

  },


  featureDefs                   = {

    DEAD = {
      description      = [[Wreckage - Annihilator]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 7000,
      energy           = 0,
      featureDead      = [[HEAP]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 3,
      footprintZ       = 3,
      height           = [[20]],
      hitdensity       = [[100]],
      metal            = 600,
      object           = [[arm_annihilator_dead.s3o]],
      reclaimable      = true,
      reclaimTime      = 600,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    HEAP = {
      description      = [[Debris - Annihilator]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 7000,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 3,
      footprintZ       = 3,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 300,
      object           = [[debris3x3a.s3o]],
      reclaimable      = true,
      reclaimTime      = 300,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

  },

}

return lowerkeys({ armanni = unitDef })

// Define versions for libraries:
val VersionCats       = "1.4.0"
val VersionCatsEffect = "1.0.0"

// Define library dependencies which will be downloaded during Docker build:
libraryDependencies ++= Seq(
  "org.typelevel" %% "cats-core"   % VersionCats,
  "org.typelevel" %% "cats-effect" % VersionCatsEffect,
)

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/EstilosInicio.css">
  <link rel="shortcut icon" type="image/x-icon" href="/Images/20200720231601.svg"/>
  <title>Autopartes</title>
</head>
<body>
  <section id="cover" class="min-vh-100">
    <div id="cover-caption">
      <div class="container">
        <div class="row text-white">
          <div class="col-xl-5 col-lg-6 col-md-8 col-sm-10 mx-auto text-center form p-4">
            <h1 class="display-5 py-2 text-truncate">Autopartes</h1>
            <div class="px-2">
              <form action="<?=base_url('Principal/Inicio')?>" class="justify-content-center" method="post">
                <div class="form-group">
                  <label class="sr-only">Usuario</label>
                  <input type="text" class="form-control" placeholder="Usuario" name="Usuario" value="">
                </div>

                <div class="form-group">
                  <label class="sr-only">Contraseña</label>
                  <input type="password" class="form-control" id="inputPassword" placeholder="Contraseña" name="Contrasena">
                </div>

                <button type="submit" class="btn btn-primary btn-lg">Inicio</button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <script src="js/jquery-3.5.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
</body>
</html>

ALTER TABLE productos
ADD FOREIGN KEY (categoria_nombre) REFERENCES categorias(Identificador);
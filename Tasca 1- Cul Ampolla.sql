-- MySQL Script generated by MySQL Workbench
-- Thu May  4 12:09:05 2023
-- Model: Sakila Full    Version: 2.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema CulAmpolla
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `CulAmpolla` ;

-- -----------------------------------------------------
-- Schema CulAmpolla
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `CulAmpolla` ;
USE `CulAmpolla` ;

-- -----------------------------------------------------
-- Table `CulAmpolla`.`Proveedor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `CulAmpolla`.`Proveedor` ;

CREATE TABLE IF NOT EXISTS `CulAmpolla`.`Proveedor` (
  `ProveedorID` INT NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Dirección` VARCHAR(45) NOT NULL,
  `Ciudad` VARCHAR(45) NOT NULL,
  `Codigo Postal` INT NOT NULL,
  `País` VARCHAR(45) NOT NULL,
  `Teléfono` INT NOT NULL,
  `Fax` INT NOT NULL,
  `NIF` INT NOT NULL,
  PRIMARY KEY (`ProveedorID`, `Nombre`, `Dirección`, `Ciudad`, `Codigo Postal`, `País`, `Teléfono`, `Fax`, `NIF`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CulAmpolla`.`Cliente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `CulAmpolla`.`Cliente` ;

CREATE TABLE IF NOT EXISTS `CulAmpolla`.`Cliente` (
  `ClienteID` INT NOT NULL,
  `Nombre` VARCHAR(50) NOT NULL,
  `Direccion` VARCHAR(100) NOT NULL,
  `Telefono` VARCHAR(20) NOT NULL,
  `Email` VARCHAR(50) NOT NULL,
  `FechaRegistro` DATE NOT NULL,
  `IdRecomendado` INT NOT NULL,
  PRIMARY KEY (`ClienteID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CulAmpolla`.`Empleado`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `CulAmpolla`.`Empleado` ;

CREATE TABLE IF NOT EXISTS `CulAmpolla`.`Empleado` (
  `EmpleadoID` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`EmpleadoID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CulAmpolla`.`Gafas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `CulAmpolla`.`Gafas` ;

CREATE TABLE IF NOT EXISTS `CulAmpolla`.`Gafas` (
  `GafasID` INT NOT NULL,
  `Marca` VARCHAR(45) NULL,
  `GraduacionD` VARCHAR(20) NULL,
  `GraduacionI` VARCHAR(20) NULL,
  `Montura` VARCHAR(45) NULL,
  `ColorMontura` VARCHAR(45) NULL,
  `ColorCristalD` VARCHAR(45) NULL,
  `ColorCristalI` VARCHAR(45) NULL,
  `Precio` DECIMAL(8,2) NULL,
  `ProveedorID` INT NULL,
  `EmpleadoID` INT NULL,
  PRIMARY KEY (`GafasID`))
ENGINE = InnoDB;

CREATE INDEX `ProveedorID_idx` ON `CulAmpolla`.`Gafas` (`ProveedorID` ASC);

CREATE INDEX `EmpleadoID_idx` ON `CulAmpolla`.`Gafas` (`EmpleadoID` ASC);


-- -----------------------------------------------------
-- Table `CulAmpolla`.`Compra`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `CulAmpolla`.`Compra` ;

CREATE TABLE IF NOT EXISTS `CulAmpolla`.`Compra` (
  `CompraID` INT NOT NULL,
  `Fecha` DATE NULL,
  `ClienteID` INT NULL,
  `GafasID` INT NULL,
  `EmpleadoID` INT NULL,
  PRIMARY KEY (`CompraID`))
ENGINE = InnoDB;

CREATE INDEX `ClienteID_idx` ON `CulAmpolla`.`Compra` (`ClienteID` ASC);

CREATE INDEX `GafasID_idx` ON `CulAmpolla`.`Compra` (`GafasID` ASC);

CREATE INDEX `EmpleadoID_idx` ON `CulAmpolla`.`Compra` (`EmpleadoID` ASC);


-- -----------------------------------------------------
-- Data for table `CulAmpolla`.`Proveedor`
-- -----------------------------------------------------
START TRANSACTION;
USE `CulAmpolla`;
INSERT INTO `CulAmpolla`.`Proveedor` (`ProveedorID`, `Nombre`, `Dirección`, `Ciudad`, `Codigo Postal`, `País`, `Teléfono`, `Fax`, `NIF`) VALUES (1, 'Proveidor 1', 'Carrer Major, 10', 'Barcelona', 08001, 'España', 932000000, 932000001, A12345678);
INSERT INTO `CulAmpolla`.`Proveedor` (`ProveedorID`, `Nombre`, `Dirección`, `Ciudad`, `Codigo Postal`, `País`, `Teléfono`, `Fax`, `NIF`) VALUES (2, 'Proveidor 2', 'Calle de la Industria, 20', 'Madrid', 28001, 'España', 914000000, 914000001, B12345678);
INSERT INTO `CulAmpolla`.`Proveedor` (`ProveedorID`, `Nombre`, `Dirección`, `Ciudad`, `Codigo Postal`, `País`, `Teléfono`, `Fax`, `NIF`) VALUES (3, 'Proveidor 3', 'Carrer de la Pau, 30', 'Valencia', 46001, 'España', 963000000, 963000001, C12345678);

COMMIT;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

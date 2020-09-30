/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */ 
var  btnAbrirPopup  =  documento . getElementById ( 'btn-abrir-popup' ) ,
	superposición  =  documento . getElementById ( 'superposición' ) ,
	emergente  =  documento . getElementById ( 'ventana emergente' ) ,
	btnCerrarPopup  =  documento . getElementById ( 'btn-cerrar-popup' ) ;

btnAbrirPopup . addEventListener ( 'clic' ,  función ( ) {
	superposición . classList . agregar ( 'activo' ) ;
	emergente . classList . agregar ( 'activo' ) ;
} ) ;

btnCerrarPopup . addEventListener ( 'clic' ,  función ( e ) {
	e . preventDefault ( ) ;
	superposición . classList . eliminar ( 'activo' ) ;
	emergente . classList . eliminar ( 'activo' ) ;
} ) ;



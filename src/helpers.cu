/***************************************************************************//**
* \file helpers.cu
* \author Krishnan, A. (anush@bu.edu)
* \brief Contains the definition of discrete Delta functions
*/

#include <helpers.h>

/********************//**
* \fn real dhRoma(real x, real h)
* \brief Discrete Delta function from Roma et al. (1999)
* \param x the coordinate of the grid point
* \paran h the grid-spacing in the uniform region
* \return the discrete delta function
*/
real dhRoma(real x, real h)
{
	real r = fabs(x)/h;
	
	if(r>1.5)
		return 0.0;
	else if(r>0.5 && r<=1.5)
		return 1.0/(6*h)*( 5.0 - 3.0*r - sqrt(-3.0*(1-r)*(1-r) + 1.0) );
	else
		return 1.0/(3*h)*( 1.0 + sqrt(-3.0*r*r + 1.0) );
}

/********************//**
* \fn real delta(real x, real y, real h)
* \brief Discrete Delta function in 2D
* \param x the x-coodinate of the grid point
* \param y the y-coordinate of the grid point
* \param h the grid-spacing in the uniform region
* \return the discrete Delta function in 2D
*/
real delta(real x, real y, real h)
{
	return dhRoma(x, h) * dhRoma(y, h);
}

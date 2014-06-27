/***************************************************************************//**
* \file boundaryCondition.h
* \author Krishnan, A. (anush@bu.edu)
* \brief Definition of the class \c boundaryCondition
*/

#pragma once

#include <types.h>
#include <string>
#include <sstream>
#include <parameterDB.h>

/***************************************************************************//**
* \class boundaryCondition
* \brief Stores the boundary conditions for a given system
*/
class boundaryCondition
{
public:
  bcType type; ///< Type of boundary condition
  real  value; ///< Numerical value associated with the boundary condition

  boundaryCondition() : type(DIRICHLET), value(0) {}; 
  boundaryCondition(bcType _type, real _value) : type(_type), value(_value) {}; 


  /*const char *print()
  {
    std::stringstream ss; 
    ss << toString(this->type);
    ss << " : ";
    ss << this->value;
    std::string st = ss.str();
    //std::cout << st << std::endl;
    return ss.str().c_str();
  }*/
};

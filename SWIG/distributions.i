
/*
 Copyright (C) 2000, 2001, 2002 RiskMap srl

 This file is part of QuantLib, a free-software/open-source library
 for financial quantitative analysts and developers - http://quantlib.org/

 QuantLib is free software: you can redistribute it and/or modify it under the
 terms of the QuantLib license.  You should have received a copy of the
 license along with this program; if not, please email ferdinando@ametrano.net
 The license is also available online at http://quantlib.org/html/license.html

 This program is distributed in the hope that it will be useful, but WITHOUT
 ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 FOR A PARTICULAR PURPOSE.  See the license for more details.
*/

// $Id$

#ifndef quantlib_distributions_i
#define quantlib_distributions_i

%{
using QuantLib::Math::NormalDistribution;
using QuantLib::Math::CumulativeNormalDistribution;
using QuantLib::Math::InvCumulativeNormalDistribution;
%}

#if defined(SWIGRUBY)
%rename(__call__) operator();
#endif

#if defined(SWIGMZSCHEME)
%rename(call) operator();
#endif


class NormalDistribution {
  public:
    NormalDistribution(double average = 0.0, double sigma = 1.0);
    double operator()(double x);
    double derivative(double x);
};

class CumulativeNormalDistribution {
  public:
    CumulativeNormalDistribution(double average = 0.0, double sigma = 1.0);
    double operator()(double x);
    double derivative(double x);
};

class InvCumulativeNormalDistribution {
  public:
    InvCumulativeNormalDistribution(double average = 0.0,  double sigma = 1.0);
    ~InvCumulativeNormalDistribution();
    double operator()(double x);
};


#endif
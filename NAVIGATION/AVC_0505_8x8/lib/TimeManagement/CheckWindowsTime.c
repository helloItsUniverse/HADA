#include <windows.h>
#include <time.h>
#include "mex.h"

/* Input Arguments */
#define T_IN prhs[0]
#define Y_IN prhs[1]


/* Output Arguments */
#define YP_OUT plhs[0]


double CheckWindowsTime(double a[], double b[])
{
	LARGE_INTEGER liCount, liFreq;

	QueryPerformanceCounter(&liCount);
	QueryPerformanceFrequency(&liFreq);

	return ((liCount.QuadPart / ((double)(liFreq.QuadPart)))*1000.0);
}

void mexFunction(int nlhs, mxArray* plhs[], int nrhs, const mxArray* prhs[])
{
	double* out;
    double *in1, *in2;
    
	size_t m, n;

	m = mxGetM(Y_IN);
	n = mxGetN(Y_IN);

	YP_OUT = mxCreateDoubleMatrix((mwSize)m, (mwSize)n, mxREAL);

	out = mxGetPr(YP_OUT);
	in1 = mxGetPr(T_IN);
	in2 = mxGetPr(Y_IN);
    
	*out = CheckWindowsTime(in1, in2);

	return;
}
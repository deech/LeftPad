PATSHOMEQ="$(PATSHOME)"

PATSCC=$(PATSHOMEQ)/bin/patscc
PATSOPT=$(PATSHOMEQ)/bin/patsopt
PATSCCFLAGS = -g
all: left-pad
left-pad: left-pad.dats; \
  $(PATSCC) $(PATSCCFLAGS) -D_GNU_SOURCE -DATS_MEMALLOC_LIBC -g -I${PATSHOME}/contrib -o $@ $< -latslib
RMF=rm -f
clean:: ; $(RMF) *~
clean:: ; $(RMF) *.o
clean:: ; $(RMF) *.c
clean:: ; $(RMF) left-pad
cleanall:: clean

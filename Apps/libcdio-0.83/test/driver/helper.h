/* -*- C -*-
  Copyright (C) 2010 Rocky Bernstein <rocky@gnu.org>
  
  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/
void check_access_mode(CdIo_t *p_cdio, const char *psz_expected_access_mode);
void check_get_arg_source(CdIo_t *p_cdio, const char *psz_expected_source);
void check_mmc_supported(CdIo_t *p_cdio, int i_expected);


